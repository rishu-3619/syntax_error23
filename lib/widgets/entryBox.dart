import 'package:flutter/material.dart';

class EntryBox extends StatefulWidget {
  const EntryBox({
    required this.title,
    required this.amount,
    required this.dec_inc,
  });
  final String title;
  final int amount;
  final int dec_inc;

  @override
  State<EntryBox> createState() => _EntryBoxState();
}

class _EntryBoxState extends State<EntryBox> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 12.0,
        right: 12.0,
      ),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
          ),
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Column(
            children: [
              const Text(
                '',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 5.0,
                ),
              ),
              Text(
                widget.dec_inc == 1
                    ? "+\u{20B9}${widget.amount}"
                    : "-\u{20B9}${widget.amount}",
                style: TextStyle(
                  color: ((widget.dec_inc == 1) ? Colors.green : Colors.red),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Just Now",
                style: TextStyle(
                  color: Color.fromARGB(255, 108, 106, 106),
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
