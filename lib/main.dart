import 'package:final_project/core/shared_pref/shared_pref.dart';
import 'package:final_project/features/dashboard/dashboard_page.dart';
import 'package:final_project/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    handleRouting();
  }

  Future<void> handleRouting() async {
    final hasSeenOnboarding = await SharedPref.getOnboardingStatus();

    if (!hasSeenOnboarding) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingPage()),
      );

      await SharedPref.saveOnboardingStatus(true);
    } else {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const OnBoardingPage(), // You can use the initial page you want to show
    );
  }
}
