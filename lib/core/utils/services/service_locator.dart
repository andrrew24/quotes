import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void serviceLocatorSetup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}
