import 'package:flutter/material.dart';
import 'package:onboarding_screen/page/home.dart';
import 'package:onboarding_screen/page/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

int initScreen = 0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen") ?? 0;
  await prefs.setInt("initScreen", 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initScreen == 0 ? Onboarding() : Home(),
    );
  }
}
