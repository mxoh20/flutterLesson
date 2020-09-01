import 'package:corona_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/flutter_wall.png",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: true,
                            validator: (s) {},
                            textAlign: TextAlign.center,
                            controller: _username,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "username",
                              hintText: "enter email",
                              icon: Icon(Icons.mail),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: _password,
                            validator: (s) {},
                            maxLength: 10,
                            maxLengthEnforced: true,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "password",
                                hintText: "Enter Password",
                                icon: Icon(Icons.lock)),
                          ),
                          RaisedButton(
                            onPressed: () {
                              formKey.currentState.validate();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text("sign in"),
                            elevation: 2,
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}

/**
 *
 *
 *
 *
 *
 * **/
