import 'package:flutter/material.dart';

class SelectUserTypeScreen extends StatefulWidget {
  const SelectUserTypeScreen({super.key});

  @override
  State<SelectUserTypeScreen> createState() =>
      _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('클뮤식 뮤즈님, 클뮤에 오신걸 환영해요'),
        ),

        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
                children: [




                ]
            )
        )
    );
  }
}