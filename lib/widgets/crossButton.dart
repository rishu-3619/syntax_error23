import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class crossButton extends StatelessWidget {
  const crossButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: Navigator.of(context).pop,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(2, 2),
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
        ),
        child: Icon(Icons.close, color: Colors.red));
  }
}
