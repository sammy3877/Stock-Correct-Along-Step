import 'package:flutter/material.dart';
import 'package:music_platform/screens/auth/term_agreement_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                '지금 클뮤에서\n당신의 음악을 시작해보세요',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('이메일로 로그인'),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermAgreementScreen(),
                      ),
                    );
                  },
                  child: const Text('회원가입'),
                ),
              ),

              const SizedBox(height: 40),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.chat),
                  Icon(Icons.language),
                  Icon(Icons.facebook),
                  Icon(Icons.g_mobiledata),
                ],
              ),

              const SizedBox(height: 40),

              const Text('아이디 / 비밀번호 찾기'),

              SizedBox(height: 12),

              const Text('문의하기'),
            ],
          ),
        ),
      ),
    );
  }
}