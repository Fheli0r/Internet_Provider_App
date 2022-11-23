import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/supportpage.dart';
import 'package:flutter_project2/pages/servicespage.dart';
import 'accountpage.dart';
import 'homepage.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

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
          title: Text('Configurations'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  child: Text(
                    'internet speed test',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            SizedBox(
              height: 3,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  child: Text(
                    'Maintenance of GamesNet devices',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            SizedBox(height: 3),
            InkWell(
              onTap: () {},
              child: Container(
                  child: Text(
                    'Change password and network name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            SizedBox(height: 3),
            InkWell(
              onTap: () {},
              child: Container(
                  child: Text(
                    'Change account details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            SizedBox(
              height: 3,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ServicesPage()));
              },
              child: Container(
                  child: Text(
                    'Change subscription',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            SizedBox(
              height: 3,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  child: Text(
                    'Cancel subscription',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            )
          ],
        ));
  }
}
