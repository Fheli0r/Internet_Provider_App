import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/servicespage.dart';

import '../widgets/buildprofile.dart';
import 'homepage.dart';
import 'supportpage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
        title: Text('Account'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Column(
        children: [
          buildProfileImage(),
          SizedBox(
            child: Text(
              'Email: client@gmail.com',
              style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  backgroundColor: Colors.black,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            child: Text(
              'Name: client GamerNet',
              style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  backgroundColor: Colors.black,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => ServicesPage()));
              },
              child: Text('Standard subscription'),
            ),
          )
        ],
      )),
    );
  }
}
