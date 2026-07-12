import 'package:flutter/material.dart';
import 'package:music_platform/models/expert_type.dart';

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


            // RadioListTile<InstrumentType>(
            //   title: const Text('피아노'),
            //   value: InstrumentType.piano,
            //   groupValue: selectedInstrument,
            //   onChanged: (value) {
            //     setState(() {
            //       selectedInstrument = value;
            //     });
            //   },
            // ),


            children: InstrumentType.values.map((instrument) {
              return RadioListTile<InstrumentType>(
                title: Text(instrument.displayName),
                value: instrument,
                groupValue: selectedInstrument,
                onChanged: (value) {
                  setState(() {
                    selectedInstrument = value;
                  });
                },
              ),
            }).toList(),



          ]
        )
      )

    );
  }
}