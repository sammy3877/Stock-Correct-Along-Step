import 'package:flutter/material.dart';

class ExpertOnboardingScreen extends StatefulWidget {
  const ExpertOnboardingScreen({super.key});

  @override
  State<ExpertOnboardingScreen> createState() =>
      _ExpertOnboardingScreenState();
}

class _ExpertOnboardingScreenState extends State<ExpertOnboardingScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('전문가 화면'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [

                ]
            )
        )
    );
  }
}