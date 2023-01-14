import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  bool entryBox = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextButton(
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 6.0,
          ),
          child: Text(
            'Submit',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        onPressed: () => {entryBox = false},
      ),
    );
  }
}
