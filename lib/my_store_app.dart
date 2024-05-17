import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/Feature/splash/presenation/views/splash_screen.dart';
import 'package:store_app/core/app/connectivity.dart';
import 'package:store_app/core/app/env_variable.dart';
import 'package:store_app/core/common/screens/no_network_screen.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, valu, __) {
          if (valu) {
            return ScreenUtilInit(
              designSize: Size(375, 821),
              minTextAdapt: true,
              child: MaterialApp(
                title: "Store App",
                debugShowCheckedModeBanner: EnvVariale.instance.debugType,
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                builder: (context, widget) {
                  return Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return widget!;
                      },
                    ),
                  );
                },
                home: SplashScreen(),
              ),
            );
          } else {
            return MaterialApp(
              title: "No Internet Connection ",
              debugShowCheckedModeBanner: EnvVariale.instance.debugType,
              theme: ThemeData(
                useMaterial3: true,
              ),
              home: NoNetworkScreen(),
            );
          }
        });
  }
}
