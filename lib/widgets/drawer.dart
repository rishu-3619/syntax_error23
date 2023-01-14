import 'package:flutter/material.dart';

class DrawerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Sanidhya Bhatia",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("9350150257"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text(
                    "SB",
                    style: TextStyle(fontSize: 30.0, color: Colors.purple),
                  ), //Text
                ), //circleAvatar
              ),
            ),
            ExpansionTile(
              leading: Icon(
                Icons.payment,
                color: Colors.grey,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 10.0,
                color: Colors.grey,
              ),
              title: Text(
                " Monthly Expenditure",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              children: <Widget>[
                ListTile(
                  trailing: Text(
                    "Credited:  +\u{20B9}50000",
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  trailing: Text(
                    "Debited:   -\u{20B9}10000",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.account_balance,
                color: Colors.grey,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 10.0,
                color: Colors.grey,
              ),
              title: Text(
                " Annual Expenditure",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              children: <Widget>[
                ListTile(
                  trailing: Text(
                    "Credited:  +\u{20B9}500000",
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  trailing: Text(
                    "Debited:   -\u{20B9}100000",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.grey,
              ),
              title: Text(
                "Clear Data",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
