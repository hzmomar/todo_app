import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/presentation/app_widget.dart';
import 'package:todo/core/shared/enum.dart';
import 'package:todo/core/shared/flavor_manager.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  FlavorManager(
    env: AppEnvironment.stage,
  );

  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
