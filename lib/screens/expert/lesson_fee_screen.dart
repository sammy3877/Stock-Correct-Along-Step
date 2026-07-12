import 'package:flutter/material.dart';
import 'package:music_platform/models/fee_type.dart';

class LessonFeeScreen extends StatefulWidget {
  const LessonFeeScreen({super.key});

  @override
  State<LessonFeeScreen> createState() =>
      _LessonFeeScreenState();
}

class _LessonFeeScreenState extends State<LessonFeeScreen> {

  LessonFeeType? selectedLessonFee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("레슨비 설정")
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text('1회당 수업료는 얼마인가요?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              '클뮤에서는 더 나은 클래식 레슨 환경 조성을 위해\n'
                  '레슨 1회 비용을 최소 5만원으로 설정했습니다.\n'
                  '그 이하 가격으로는 설정이 불가합니다.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.red,
              ),
            ),

            ...LessonFeeType.values.map((fee) {
              return RadioListTile<LessonFeeType>(
                title: Text(fee.displayName),
                value: fee,
                groupValue: selectedLessonFee,
                onChanged: (value) {
                  setState(() {
                    selectedLessonFee = value;
                  });
                },
              );
            }).toList()

          ]
        )
      )

    );
  }

}