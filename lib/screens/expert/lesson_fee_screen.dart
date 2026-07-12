import 'package:flutter/material.dart';

class LessonFeeScreen extends StatefulWidget {
  const LessonFeeScreen({super.key});

  @override
  State<LessonFeeScreen> createState() =>
      _LessonFeeScreenState();
}

class _LessonFeeScreenState extends State<LessonFeeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("레슨비 설정")
      ),
    );
  }

}