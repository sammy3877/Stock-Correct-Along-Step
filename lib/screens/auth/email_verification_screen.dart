import 'package:flutter/material.dart';
import 'package:music_platform/screens/auth/create_password_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {

  String email = '';
  String verificationCode = '';

  bool canSendVerificationCode = false;
  bool isEmailVerified = false;

  bool checkEmail(String email) {
    if (email.isEmpty) {
      return false;
    }
    return true;
  }

  bool checkEmailCode(String code) {
    if(code.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {

    bool canProceed = canSendVerificationCode && isEmailVerified;

    return Scaffold(
      appBar: AppBar(
        title: const Text('이메일 인증'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              '이메일로 회원가입',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '이메일',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 8),


            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        email = value;
                        canSendVerificationCode = checkEmail(email);
                      });
                    }
                  ),
                ),

                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: canSendVerificationCode ? () {
                    print('인증하기 버튼 클릭');
                  } : null,
                  child: const Text('인증하기')
                ),
              ],
            ),


            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '인증코드',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                Expanded(
                  child: TextField(
                      onChanged: (value) {
                        setState(() {
                          verificationCode = value;
                          isEmailVerified = checkEmailCode(verificationCode);
                        });
                      }
                  ),
                ),
              ],
            ),

          const Spacer(),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: canProceed ? () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreatePasswordScreen(),
                      )
                  );
                }: null,
                child: const Text('다음'),
              ),
           )
          ]
        )
      )
    );
  }
}


