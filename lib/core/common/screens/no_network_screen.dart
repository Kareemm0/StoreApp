import 'package:flutter/material.dart';
import 'package:store_app/core/styles/app_images.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.netWorkImage), fit: BoxFit.fill),
        ),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
