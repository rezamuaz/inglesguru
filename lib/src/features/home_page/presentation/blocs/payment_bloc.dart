import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/network_exceptions.dart';
import 'package:sysbit/src/features/home_page/data/model/payment_created.dart';
import 'package:sysbit/src/features/home_page/domain/repository/home_repo.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const _Initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const PaymentState.loading());
          final ApiResult<PaymentCreated> apiResult =
              await HomeRepoImpl().createdPaymentRemote();
          return apiResult.when(success: (data, success, rc) async {
            return emit(PaymentState.loaded(data));
          }, failure: (error, msg) async {
            return emit(PaymentState.error(error));
          });
        },
      );
    });
  }
}
