import 'package:bookstore_app/Config/Themes.dart';
import 'package:bookstore_app/Pages/SplacePages/SplacePage.dart';
import 'package:bookstore_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:bookstore_app/Pages/WelcomePage.dart';
// import 'package:bookstore_app/Pages/SplacePages/SplacePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-BOOK',
      theme: lightTheme,
      home: const SplacePage(),
      // home: MyHomePage(),
    );
  }
}
