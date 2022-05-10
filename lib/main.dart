
import 'package:flutter/material.dart';
import 'package:pro1/app.dart';

import 'di/injector_config.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InjectorConfig.setup();
  runApp(const MyApp());
}