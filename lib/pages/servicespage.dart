import 'package:flutter/material.dart';
import 'package:flutter_project2/pages/supportpage.dart';
import 'accountpage.dart';
import 'homepage.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

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
          title: Text('Services'),
          backgroundColor: Colors.black,
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SizedBox(
                child: Image.asset('assets/imgs/backgroundServices.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Gamer Net Services',
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
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'About us: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 60,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          Container(
              child: Text(
                'We are a company specialized in bringing the best in uploads and downloads for you to browse the web.Along with our TV plan, you can watch all kinds of channels for a price according to the plan you subscribe to.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 135,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          SizedBox(height: 6),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Basic subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 60,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          Container(
              child: Text(
                'With our basic subscription you can enjoy the fastest internet service available today and you will also have access to over fifty TV channels.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 100,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          SizedBox(height: 6),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Standard subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 60,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          Container(
              child: Text(
                'In the standard subscription you will have access to 5GHZ internet which is even faster than the basic plan and with access to more than one hundred and fifty TV channels, you will also have a discount in gamers stores.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 135,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          SizedBox(height: 6),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Premium subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 60,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          Container(
              child: Text(
                'In our premium subscription, you will have access to everything that the other subscriptions offer, but all the channels in our catalog will also be available along with access to Gamer Net Plus.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 120,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          SizedBox(height: 6),
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                'What is GamerNet Plus?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 60,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          Container(
              child: Text(
                'Gamer Net Plus is our hybrid streaming service, with a catalog ranging from movies and series to PC shows and games.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              height: 80,
              decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  )))),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(color: Colors.white)),
              onPressed: () {},
              child: Text('Change your subscription'))
        ]));
  }
}
