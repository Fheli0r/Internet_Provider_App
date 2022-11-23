import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/supportpage.dart';
import 'accountpage.dart';
import 'homepage.dart';

class InvoicesPage extends StatelessWidget {
  const InvoicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 248, 219, 219),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/imgs/client.jpg'),
              ),
              accountName: Text('Client GamerNet'),
              accountEmail: Text('client@gmail.com'),
            ),
            ListTile(
              title: Text(
                'Main menu',
              ),
              subtitle: Text('GamerNet Menu'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              subtitle: Text('More details'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text('Support'),
              subtitle: Text('Help and assistance'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SuportPage()));
              },
            ),
            ListTile(
              title: Text(
                'Logout',
              ),
              subtitle: Text('Login page'),
              leading: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 219, 219),
      appBar: AppBar(
        title: Text('Invoices'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'There are no open invoices',
          style: TextStyle(fontSize: 20, fontFamily: 'Raleway'),
        ),
      ),
    );
  }
}
