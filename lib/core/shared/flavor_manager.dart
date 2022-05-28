import 'package:todo/core/shared/enum.dart';

class FlavorSettings {
  FlavorSettings({
    required this.baseUrl,
  });

  final Uri baseUrl;
}

class FlavorManager {
  static late FlavorManager _instance;
  final AppEnvironment env;
  final FlavorSettings? settings;

  factory FlavorManager({
    required AppEnvironment env,
    FlavorSettings? settings,
  }) {
    return _instance = FlavorManager._internal(env: env, settings: settings);
  }
  FlavorManager._internal({required this.env, this.settings});

  static FlavorManager get instance => _instance;

  static bool isProd() => _instance.env == AppEnvironment.prod;

  static bool isDev() => _instance.env == AppEnvironment.dev;

  static bool isStage() => _instance.env == AppEnvironment.stage;
}
