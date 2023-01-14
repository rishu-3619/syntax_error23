import 'package:flutter/material.dart';
import 'amountBox.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({required this.totalExpense, required this.totalIncome});
  final double totalExpense;
  final double totalIncome;
  @override
  Widget build(BuildContext context) {
    double saving = totalIncome - totalExpense;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: height * 0.25,
      width: width * 0.95,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Total Transaction",
            style: TextStyle(
              color: Colors.black,
              fontSize: 23.0,
            ),
          ),
          Text(
            saving.toStringAsFixed(2),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AmountBox(
                    icon: Icons.arrow_downward_rounded,
                    iconColor: Colors.green,
                    title: 'Credited',
                    amount: totalIncome.toStringAsFixed(2)),
                AmountBox(
                    icon: Icons.arrow_upward_rounded,
                    iconColor: Colors.red,
                    title: 'Debited',
                    amount: totalExpense.toStringAsFixed(2)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
