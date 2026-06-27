import 'package:flutter/material.dart';
import 'package:music_platform/screens/nickname_screen.dart';


class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() =>
      _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {

  String password = '';
  String confirmPassword = '';

  bool isPasswordValid = false;
  bool isPasswordMatched = false;

  bool checkPassword(String password) {
    if(password.isEmpty) {
      return false;
    }
    return true;
  }

  bool checkPasswordMatch(String confirmPassword){
    return password == confirmPassword;
  }

  @override
  Widget build(BuildContext context) {

    bool canProceed = isPasswordValid && isPasswordMatched;

    return Scaffold(
      appBar: AppBar(
        title: const Text('비밀번호 설정'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              '비밀번호 설정하기',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '비밀번호',
                style: TextStyle(
                  fontSize: 12
                ),
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                  isPasswordValid = checkPassword(password);
                });
              },
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '영문 대소문자, 숫자, 특수문자 포함 8자리 이상으로 입력해주세요',
                style: TextStyle(
                    fontSize: 8
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '비밀번호 확인',
                style: TextStyle(
                    fontSize: 12
                ),
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                  isPasswordMatched = checkPasswordMatch(confirmPassword);
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
                        builder: (context) => const NicknameScreen(),
                    )
                  );
                }: null,
                child: const Text('다음'),
              )
            )

          ]
        )
      )
    );
  }
}