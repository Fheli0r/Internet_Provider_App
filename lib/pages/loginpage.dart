import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_project2/pages/signuppage.dart';
import 'package:flutter_project2/store/login_store.dart';
import 'package:mobx/mobx.dart';

import '../widgets/custom_textfield.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginStore loginStore = LoginStore();

  late ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    autorun((_) {
      if (loginStore.loggedIn)
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

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
                        Observer(builder: (_) {
                          return CustomTextField(
                              enable: !loginStore.loading,
                              hint: 'E-mail',
                              obscure: false,
                              onchanged: loginStore.setEmail,
                              prefix: Icon(Icons.account_circle),
                              textInputType: TextInputType.emailAddress);
                        }),
                        SizedBox(
                          height: 16,
                        ),
                        Observer(builder: (_) {
                          return CustomTextField(
                              enable: !loginStore.loading,
                              hint: 'Password',
                              obscure: true,
                              onchanged: loginStore.setPassword,
                              prefix: Icon(Icons.lock),
                              textInputType: TextInputType.text);
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        Observer(builder: (_) {
                          return SizedBox(
                            height: 50,
                            width: 300,
                            child: RaisedButton(
                                onPressed: loginStore.isFormValid
                                    ? () {
                                        loginStore.login();
                                      }
                                    : null,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: loginStore.loading
                                    ? CircularProgressIndicator(
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      )
                                    : Text('Login'),
                                color: Theme.of(context).primaryColor,
                                disabledColor: Theme.of(context)
                                    .primaryColor
                                    .withAlpha(100),
                                textColor: Colors.white),
                          );
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Text('Sign Up'),
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
