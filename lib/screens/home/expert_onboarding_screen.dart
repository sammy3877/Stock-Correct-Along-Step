import 'package:flutter/material.dart';
import 'package:music_platform/models/expert_type.dart';
import 'package:music_platform/screens/expert/instrument_selection_screen.dart';


class ExpertOnboardingScreen extends StatefulWidget {
  const ExpertOnboardingScreen({super.key});

  @override
  State<ExpertOnboardingScreen> createState() =>
      _ExpertOnboardingScreenState();
}

class _ExpertOnboardingScreenState extends State<ExpertOnboardingScreen> {

  ExpertType? selectedExpertType;

  @override
  Widget build(BuildContext context) {

    bool canProceed = selectedExpertType != null;

    return Scaffold(
        appBar: AppBar(
          title: const Text('전문가 화면'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [
                  const Text('어떤 전문가로 활동하실 건가요?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(height: 24),

                  RadioListTile<ExpertType>(
                    title: const Text('개인 레슨을 할 수 있는 뮤지션입니다.'),
                    value: ExpertType.musician,
                    groupValue: selectedExpertType,
                    onChanged: (value) {
                      setState(() {
                        selectedExpertType = value;
                      });
                    },
                  ),

                  const SizedBox(height: 24),

                  RadioListTile<ExpertType>(
                    title: const Text('(업체) 음악 학원을 운영중입니다.'),
                    value: ExpertType.academy,
                    groupValue: selectedExpertType,
                    onChanged: (value) {
                      setState(() {
                        selectedExpertType = value;
                      });
                    },
                  ),

                  const SizedBox(height: 24),

                  RadioListTile<ExpertType>(
                    title: const Text('(업체) 음악 관련 사업을 하고 있습니다.'),
                    value: ExpertType.business,
                    groupValue: selectedExpertType,
                    onChanged: (value) {
                      setState(() {
                        selectedExpertType = value;
                      });
                    },
                  ),

                  const SizedBox(height: 24),

                  RadioListTile<ExpertType> (
                    title: const Text('먼저 둘러보고 나중에 진행할게요.'),
                    value: ExpertType.later,
                    groupValue: selectedExpertType,
                    onChanged: (value) {
                      setState(() {
                        selectedExpertType = value;
                      });
                    },
                  ),

                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: canProceed? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InstrumentSelectionScreen(),
                            )
                        );
                      }: null,
                      child: const Text('다음')
                    )
                  )


                ]
            )
        )
    );
  }
}