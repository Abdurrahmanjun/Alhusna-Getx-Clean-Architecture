import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:al_husna/app/services/local_storage.dart';
import 'package:al_husna/app/util/dependency.dart';
import 'package:al_husna/presentation/app.dart';

void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(App());
}

initServices() async {
  print('starting services ...');
  await Get.putAsync(() => LocalStorageService().init());
  print('All services started...');
}
