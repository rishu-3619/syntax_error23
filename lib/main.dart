import 'package:flutter/material.dart';
import 'package:pay_check/screen/first_page.dart';
import 'package:pay_check/screen/mainScreen.dart';
import 'package:pay_check/widgets/submitButton.dart';
import 'classes/transaction.dart';
import 'widgets/containerMain.dart';
import 'widgets/drawer.dart';
import 'widgets/entryBox.dart';
import 'widgets/enterTransaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayCheck',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: DrawerProfile(),
      body: Center(
        child: Column(
          children: [
            enterTransaction(amount: 200.00, dec_inc: 1, time: DateTime.now()),
          ],
        ),
      ),
    );
    ;
  }
}
