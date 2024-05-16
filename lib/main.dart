import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/core/app/env_variable.dart';
import 'package:store_app/my_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariale.instance.init(typeEnum: EnvTypeEnum.dev);
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCL06UZaPTK2oKs9q101pzAcNf35SrpgQI",
              appId: "1:510922538497:android:ec6e2080a17a5bea118a00",
              messagingSenderId: "510922538497",
              projectId: "storeapp-74ee7"),
        )
      : Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => {
        runApp(
          const MyStoreApp(),
        ),
      });
}
