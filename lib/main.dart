import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/my_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCL06UZaPTK2oKs9q101pzAcNf35SrpgQI",
              appId: "1:510922538497:android:ec6e2080a17a5bea118a00",
              messagingSenderId: "510922538497",
              projectId: "storeapp-74ee7"),
        )
      : Firebase.initializeApp();
  runApp(const MyStoreApp());
}
