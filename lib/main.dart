import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:ui_project/board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          //  appBar: AppBar(title: Text("data")),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Board(),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue[900], Colors.transparent],
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.all(8),
                        child: RaisedButton(
                            child: Text('Login'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey,
                            onPressed: () {}),
                      ),
                      SizedBox(
                        height: 290,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              child: Image(
                            image: AssetImage('assets/logo.jpg'),
                          )),
                          Container(
                            child: Text(
                              'Infinite opportunities. One you.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Container(
                              child: SignInButtonBuilder(
                            text: 'Sign in with E-mail',
                            icon: Icons.email,
                            onPressed: () {},
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          )),
                          Container(
                            child: SignInButton(
                              Buttons.Google,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
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
