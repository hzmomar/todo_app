import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:todo/core/helper/enum.dart';
import 'package:todo/core/helper/flavor_manager.dart';
import 'package:todo/main.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  FlavorManager(
    env: AppEnvironment.stage,
  );

  runApp(const MyApp());
}
