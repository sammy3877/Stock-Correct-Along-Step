import 'package:flutter/material.dart';

class NicknameScreen extends StatefulWidget {
  const NicknameScreen({super.key});

  @override
  State<NicknameScreen> createState() =>
      _NicknameScreenState();
}

class _NicknameScreenState extends State<NicknameScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('내 닉네임 등록'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [
                  const Text(
                    '2~10자리로 입력해 주세요.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ]
            )
        )
    );
  }
}