import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_check/screen/withoutTransactionScreen.dart';
import 'package:pay_check/main.dart';

class crossButton extends StatefulWidget {
  const crossButton({super.key});

  @override
  State<crossButton> createState() => _crossButtonState();
}

class _crossButtonState extends State<crossButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/without'),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(2, 2),
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
        ),
        child: Icon(Icons.close, color: Colors.red));
  }
}
