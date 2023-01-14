import 'package:flutter/material.dart';
import 'package:pay_check/widgets/crossButton.dart';
import 'package:pay_check/widgets/submitButton.dart';

class enterTransaction extends StatefulWidget {
  const enterTransaction({
    required this.amount,
    required this.dec_inc,
    required this.time,
  });
  final DateTime time;
  final double amount;
  final int dec_inc;

  @override
  State<enterTransaction> createState() => _enterTransactionState();
}

class _enterTransactionState extends State<enterTransaction> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        children: <Widget>[
          Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          widget.dec_inc == 1
                              ? "+\u{20B9}${widget.amount}"
                              : "-\u{20B9}${widget.amount}",
                          style: TextStyle(
                            color: ((widget.dec_inc == 1)
                                ? Colors.green
                                : Colors.red),
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      crossButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: widget.dec_inc == 1 ? "Paid by:" : "Paid to:",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Description:',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SubmitButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
