import 'package:flutter/material.dart';
import 'package:flutter_project2/widgets/custom_textfield.dart';

import 'loginpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String emailAccount = '';
  String passwordAccount = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 219, 219),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  height: 250,
                  child: Image.asset('assets/imgs/mainicon.png'),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CustomTextField(
                            enable: true,
                            hint: 'Phone number',
                            obscure: false,
                            onchanged: (emailAccount) {},
                            prefix: Icon(Icons.phone),
                            textInputType: TextInputType.number),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextField(
                            enable: true,
                            hint: 'E-mail',
                            obscure: false,
                            onchanged: (emailAccount) {},
                            prefix: Icon(Icons.account_circle),
                            textInputType: TextInputType.emailAddress),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextField(
                            enable: true,
                            hint: 'Password',
                            obscure: true,
                            onchanged: (pass) {},
                            prefix: Icon(Icons.lock),
                            textInputType: TextInputType.text),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                            enable: true,
                            hint: 'Repeat the password',
                            obscure: true,
                            onchanged: (pass) {},
                            prefix: Icon(Icons.lock),
                            textInputType: TextInputType.text),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Text('Create your account'),
                              color: Theme.of(context).primaryColor,
                              disabledColor:
                                  Theme.of(context).primaryColor.withAlpha(100),
                              textColor: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
