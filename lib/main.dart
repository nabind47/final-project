import 'package:final_project/core/shared_pref/shared_pref.dart';
import 'package:final_project/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingPage(),
    );
  }


  Future<void> handleRouting() async {
    final hasSeenOnboarding = await SharedPref.getOnboardingStatus();

    if(!hasSeenOnboarding){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const OnBoardingPage()));

      await SharedPref.saveOnboardingStatus(true);
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    }

}
}


