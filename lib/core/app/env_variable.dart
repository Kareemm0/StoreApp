import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariale {
  EnvVariale._();

  static final EnvVariale instance = EnvVariale._();

  String _envType = "";

  Future<void> init({required EnvTypeEnum typeEnum}) async {
    switch (typeEnum) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.production');
    }

    _envType = dotenv.get('ENV.TYPE');
  }

  bool get debugType => _envType == 'dev';
}
