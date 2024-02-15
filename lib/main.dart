import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo_app/controller_bindings.dart';
import 'package:todo_app/screens/intro.dart';

Future<void> main() async {
  //Firebase init
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: 'AIzaSyC1hdcJT4Sn-8pa1bZ7qDOWkPzQ_pl-JpM',
          appId: '1:168967831398:android:3e4cc9e4e6765d5ca052a7',
          messagingSenderId: '168967831398',
          projectId: 'todo-app-8fa95',
        ))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
        primarySwatch: Colors.blue,
      ),
      home: const Intro(),
      initialBinding: ControllerBindings(),
    );
  }
}
