import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pay_check/widgets/enterTransaction.dart';
import 'package:pay_check/widgets/new_transaction.dart';

import '../widgets/containerMain.dart';
import '../widgets/drawer.dart';
import '../widgets/entryBox.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String? username;

    return Scaffold(
      appBar: AppBar(
        title: Text('PAYcheck'),
      ),
      drawer: DrawerProfile(),
      body: Center(
        child: Column(
          children: [
            RoundContainer(totalExpense: 200.00, totalIncome: 200000.00),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    EntryBox(
                      title: 'Canteen',
                      amount: 20,
                      dec_inc: 0,
                    ),
                    EntryBox(
                      title: 'To Rishika',
                      amount: 100,
                      dec_inc: 1,
                    ),
                    EntryBox(
                      title: 'To Shreya',
                      amount: 150,
                      dec_inc: 0,
                    ),
                    EntryBox(
                      title: 'To Prerna',
                      amount: 300,
                      dec_inc: 0,
                    ),
                    EntryBox(
                      title: 'To Vansh',
                      amount: 500,
                      dec_inc: 1,
                    ),
                    EntryBox(
                      title: 'Shopping',
                      amount: 5000,
                      dec_inc: 0,
                    ),
                    EntryBox(
                      title: 'Gym Fees',
                      amount: 3000,
                      dec_inc: 0,
                    ),
                    EntryBox(
                      title: 'Canteen',
                      amount: 500,
                      dec_inc: 1,
                    ),
                    EntryBox(
                      title: 'Chapo',
                      amount: 100000,
                      dec_inc: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
