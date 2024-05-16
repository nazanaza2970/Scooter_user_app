import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import './dashboard.dart';
import './missions.dart';
import './support.dart';
import './safety.dart';
import './loginpage.dart';
import './registerPage.dart';
import './safetyvideo.dart';
import './safetyinstructions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'ScooterLab User App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/login': (context) => const Login(),
        '/safetyVideo': (context) => const SafetyVideo(),
        '/safetyInstruction': (context) => const SafetyInstruction(),
        '/register': (context) => const Register()
      },
      initialRoute: '/login',
      // home: const MyHomePage(),
      // home: AnimatedSplashScreen(
      //     splash: 'assets/images/scooterlab_logo.png',
      //     nextScreen: const MyHomePage(),
      //     splashTransition: SplashTransition.fadeTransition,
      //     splashIconSize: 150,
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title = "ScooterLab User App";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen":const Dashboard(), "title":"Dashboard"},
    {"screen":const Missions(), "title":"Missions"},
    {"screen":const Safety(), "title":"Safety"},
    {"screen":const Support(), "title":"Support"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        enableFeedback: true,
        // showUnselectedLabels: true,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        fixedColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Missions'),
          BottomNavigationBarItem(icon: Icon(Icons.safety_check), label: 'Safety'),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support')
        ],
      ),
    );
  }
}
