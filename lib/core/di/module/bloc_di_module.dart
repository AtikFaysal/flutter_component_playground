
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/presentation/auth/splash/block/splash_cubit.dart';

Future<void> registerBlocModule() async{

  di.registerFactory<SplashCubit>(SplashCubit.new);

  return;
}