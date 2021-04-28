// ignore: avoid_web_libraries_in_flutter

import 'package:diyet_app/profile_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hoverColor: Color(0xFF2196F3),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),
                    ),
                    labelText: "Kullancı Adınız",
                    labelStyle: TextStyle(
                      color: Colors.blueAccent,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Kullanıcı adını giriniz";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    username = value;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 50,
                left: 32,
                right: 32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF0E6392),
                    const Color(0xFF0E6392),
                  ],
                ),
              ),
              child: _loginButton(),
            )
          ],
        ),
      ),
    );
  }

  Widget _loginButton() => ElevatedButton(
        child: Text("Giriş Yap"),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            //Navigator.pushNamed(context, "/homepage");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(username: username),
              ),
            );
          }
        },
      );
}
