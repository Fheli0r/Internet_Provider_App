import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/supportpage.dart';
import 'accountpage.dart';
import 'homepage.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

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
        title: Text('Info'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'WIFI  INFO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 50,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Wifi: Client 5Ghz',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 30,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password: G136S879',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 30,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Registration',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 50,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Number: 991857912',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 30,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Customer since 2018',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 30,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Next invoice date: 01/2023',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 30,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
          ),
        ],
      ),
    );
  }
}
