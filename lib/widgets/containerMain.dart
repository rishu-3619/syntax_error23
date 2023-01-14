import 'package:flutter/material.dart';
import 'amountBox.dart';

class RoundContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      height: height * 0.1,
      width: width * 0.95,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Spent @Today: ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
            ),
          ),
          Text(
            "\u{20B9}" + 1050.00.toStringAsFixed(2),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
