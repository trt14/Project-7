import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_7/src/helper/setup.dart';
import 'package:project_7/src/screens/auth/login_screen.dart';
import 'package:project_7/src/screens/auth/register_screen.dart';
import 'package:project_7/src/screens/project/create_project_screen.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/screens/public/public_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MainApp(), // Wrap your app
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PublicScreen());
  }
}
