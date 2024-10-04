import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/signin_page/data/model/register_req.dart';
import 'package:sysbit/src/features/signin_page/data/model/retrive_token_req.dart';
import 'package:sysbit/src/features/signin_page/data/model/user_auth.dart';
import 'package:sysbit/src/features/signin_page/data/repositories/signin_repo_impl.dart';

import 'package:sysbit/src/features/splash_page/data/model/device_info.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    var preference = const HiveService();

    on<AuthEvent>((event, emit) async {
      await event.when(
        signing: (user, info) async {
          emit(const AuthState.loading());

          var regis = RegisterReqMod(
            appId: info.id,
            idToken: user.idToken,
            os: info.deviceOs,
            nativeLingo: "ID",
          );
          // Await the registration response
          final regisResult = await SigninRepoImpl().register(regis);
          await regisResult.when(
            success: (data) async {
              var userHive = UserHive(
                  id: data.id,
                  displayName: user.displayName,
                  email: user.email,
                  idGoogle: user.idGoole,
                  photoUrl: user.photoUrl,
                  accessToken: data.accessToken,
                  refreshToken: data.refreshToken,
                  role: data.role);
              // Store the user data in Hive
              await preference.write<UserHive>(
                  boxName: "vaultUser",
                  key: preference.authKey,
                  value: userHive);
              // Update the user with the new token
              emit(AuthState.isAuthorized(user: userHive));
            },
            failure: (error) {
             emit(const AuthState.unAuthorized());
            },
          );
        },
        signout: () async {
          emit(const AuthState.loading());
          googleSignIn.disconnect();
          preference.clear<UserHive>(boxName: "vaultUser", key: "auth");
          return emit(const AuthState.unAuthorized());
        },
        checking: () async {
          emit(const AuthState.loading());
          var isExist = await preference.isKeyExist<UserHive>(
              boxName: "vaultUser", key: "auth");
          var data = await preference.read<UserHive>(
              boxName: "vaultUser", key: "auth");
          if (isExist && data!.email!.isNotEmpty) {
            //Renew Access Token When Open App
            final renewAccessToken =
                await SigninRepoImpl().retrivedToken(data.refreshToken!);
            return renewAccessToken.when(
              success: (result) async {
                var newData = data.copyWith(accessToken: result.accessToken);
                await preference.write<UserHive>(
                    boxName: "vaultUser",
                    key: preference.authKey,
                    value: newData);
             return emit(AuthState.isAuthorized(user: newData));  
              },
              failure: (error) {
                 googleSignIn.disconnect();
                  preference.clear<UserHive>(boxName: "vaultUser", key: "auth");
              return  emit(const AuthState.unAuthorized());
              },
            );
          }
          return emit(const AuthState.unAuthorized());
        },
      );
    });
  }
  @override
  void onChange(Change<AuthState> change) {
    print(change);
    super.onChange(change);
  }

  @override
  void onEvent(AuthEvent event) {
    print(event);
    super.onEvent(event);
  }
}
