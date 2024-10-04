import 'package:bloc/bloc.dart';
import 'package:sysbit/src/features/splash_page/data/model/device_info.dart';



class DeviceInfoCubit extends Cubit<DeviceInfo> {
  DeviceInfoCubit() : super(DeviceInfo());


  void addInfo(DeviceInfo val ){
    emit(state.copyWith(deviceOs: val.deviceOs,id: val.id));
  }
}
