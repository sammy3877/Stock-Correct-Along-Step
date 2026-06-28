import 'package:flutter/material.dart';
import 'package:music_platform/screens/auth/email_verification_screen.dart';

class TermAgreementScreen extends StatefulWidget {
  const TermAgreementScreen({super.key});

  @override
  State<TermAgreementScreen> createState() =>
      _TermAgreementScreenState();
}

class _TermAgreementScreenState extends State<TermAgreementScreen> {

  bool agreeAll = false;
  bool agreeService = false;
  bool agreePrivacy = false;
  bool agreeLocation = false;

  void updateAgreeAll() {
    agreeAll = agreeService && agreePrivacy && agreeLocation;
  }

  @override
  Widget build(BuildContext context) {

    bool canProceed = agreeService && agreePrivacy;

    return Scaffold(
      appBar: AppBar(
        title: const Text('약관동의'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '서비스 이용 약관에 동의해주세요',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 24),
            CheckboxListTile(
              title: const Text('네, 모두 동의합니다',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )
              ),
              value: agreeAll,
              onChanged: (value) {
                setState(() {
                  agreeAll = value ?? false;
                  agreeService = value ?? false;
                  agreePrivacy = value ?? false;
                  agreeLocation = value ?? false;
                });
              },
            ),

            const SizedBox(height: 12),
            CheckboxListTile(
              title: const Text('서비스 이용약관 동의 (필수)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
              ),
              value: agreeService,
              onChanged: (value) {
                setState(() {
                  agreeService = value ?? false;
                  updateAgreeAll();
                });
              },
            ),

            const SizedBox(height: 12),
            CheckboxListTile(
              title: const Text('개인정보 수집 및 이용 동의 (필수)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
              ),
              value: agreePrivacy,
              onChanged: (value) {
                setState(() {
                  agreePrivacy = value ?? false;
                  updateAgreeAll();
                });
              },
            ),

            const SizedBox(height: 12),
            CheckboxListTile(
              title: const Text('위치 서비스 이용 동의 (선택)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
              ),
              value: agreeLocation,
              onChanged: (value) {
                setState(() {
                  agreeLocation = value ?? false;
                  updateAgreeAll();
                });
              },
            ),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: canProceed ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailVerificationScreen(),
                    )
                  );
                }: null,
                child: const Text('다음'),
              ),

            ),
          ],
        ),
      ),
    );
  }
}