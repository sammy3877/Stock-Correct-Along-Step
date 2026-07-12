import 'package:flutter/material.dart';
import 'package:music_platform/models/instrument_type.dart';
import 'package:music_platform/screens/expert/lesson_fee_screen.dart';


class InstrumentSelectionScreen extends StatefulWidget {
  const InstrumentSelectionScreen({super.key});

  @override
  State<InstrumentSelectionScreen> createState() =>
      _InstrumentSelectionScreenState();
}

class _InstrumentSelectionScreenState extends State<InstrumentSelectionScreen> {

  InstrumentType? selectedInstrument;

  @override
  Widget build(BuildContext context) {

    bool canProceed = selectedInstrument != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('뮤지션 등록'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text('구체적으로 어떤 레슨을 진행할 수 있나요? (전공선택)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            ...InstrumentType.values.map((instrument) {
              return RadioListTile<InstrumentType>(
                title: Text(instrument.displayName),
                value: instrument,
                groupValue: selectedInstrument,
                onChanged: (value) {
                  setState(() {
                    selectedInstrument = value;
                  });
                },
              );
            }).toList(),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: canProceed? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LessonFeeScreen(),
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