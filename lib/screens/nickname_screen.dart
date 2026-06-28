import 'package:flutter/material.dart';
import 'package:music_platform/screens/select_user_type_screen.dart';


class NicknameScreen extends StatefulWidget {
  const NicknameScreen({super.key});

  @override
  State<NicknameScreen> createState() =>
      _NicknameScreenState();
}

class _NicknameScreenState extends State<NicknameScreen> {

  String nickname = '';
  bool isNicknameValid = false;

  bool validateNickname(String nickname) {
    return nickname.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {

    bool canProceed = isNicknameValid;

    return Scaffold(
        appBar: AppBar(
          title: const Text('내 닉네임 등록'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '닉네임',
                      style: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  TextField(
                    onChanged: (value) {
                      setState(() {
                        nickname = value;
                        isNicknameValid = validateNickname(nickname);
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
                            builder: (context) => const SelectUserTypeScreen(),
                          )
                        );
                      }: null,
                      child: const Text('확인')
                    )
                  )


                ]
            )
        )
    );
  }
}