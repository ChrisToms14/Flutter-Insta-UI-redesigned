import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/reels_screen.dart';
import 'screens/profile_screen.dart';
import 'widgets/bottom_nav.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final pages = const [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      home: Scaffold(
        body: IndexedStack(index: currentIndex, children: pages),
        bottomNavigationBar: BottomNav(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
        ),
      ),
    );
  }
}
