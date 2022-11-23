import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/accountpage.dart';
import 'package:flutter_project2/pages/configpage.dart';
import 'package:flutter_project2/pages/infopage.dart';
import 'package:flutter_project2/pages/invoicespage.dart';
import 'package:flutter_project2/pages/servicespage.dart';
import 'supportpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          title: Text('GamerNet Menu'),
          backgroundColor: Colors.black,
        ),
        body: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 3
                      : 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: (1.2 / 1),
            ),
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 5.0, left: 30.0, right: 30.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvoicesPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3.0,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/invoicesIcon.png')
                            ],
                          )))),
              Padding(
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 5.0, left: 30.0, right: 30.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3.0,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [Image.asset('assets/imgs/infoicon.png')],
                          )))),
              Padding(
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 5.0, left: 30.0, right: 30.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicesPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3.0,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/servicesicon.png')
                            ],
                          )))),
              Padding(
                  padding: EdgeInsets.only(
                      top: 15.0, bottom: 5.0, left: 30.0, right: 30.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfigPage()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3.0,
                                  blurRadius: 5.0,
                                )
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset('assets/imgs/configicon.png')
                            ],
                          )))),
            ]));
  }
}
