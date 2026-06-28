import 'package:flutter/material.dart';
import 'package:music_platform/screens/home/home_screen.dart';
import 'package:music_platform/screens/home/expert_onboarding_screen.dart';

class SelectUserTypeScreen extends StatefulWidget {
  const SelectUserTypeScreen({super.key});

  @override
  State<SelectUserTypeScreen> createState() =>
      _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('클뮤식 뮤즈님, 클뮤에 오신걸 환영해요'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: const Text('일반회원으로 시작'),
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExpertOnboardingScreen(),
                          ),
                        );
                      },
                      child: const Text('전문가로 시작'),
                    ),
                  ),


                ]
            )
        )
    );
  }
}