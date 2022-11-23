import 'package:flutter/material.dart';

import 'accountpage.dart';
import 'homepage.dart';

class SuportPage extends StatelessWidget {
  const SuportPage({Key? key}) : super(key: key);

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
          title: Text('Support'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Support:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Dear Customer,If you encounter any problems or need assistance with anything else, send a message from this chat',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 100,
                decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    )))),
            SizedBox(
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                color: Colors.grey)
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.face), onPressed: () {}),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Type Something...",
                                    border: InputBorder.none),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.photo_camera),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.attach_file),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: InkWell(
                        child: Icon(
                          Icons.keyboard_voice,
                          color: Colors.white,
                        ),
                        onLongPress: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
