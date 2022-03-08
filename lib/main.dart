import 'package:flutter/material.dart';
import 'package:flutter_learn_projects/screen/Guest.dart';
import 'package:flutter_learn_projects/screen/guest/Auth.dart';
import 'package:flutter_learn_projects/screen/guest/Password.dart';
import 'package:flutter_learn_projects/screen/guest/Term.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AuthScreen(),
      home: GuestScreen(),
      // home: TermScreen(),
      // home: PasswordScreen(),
      theme: ThemeData(
          // primaryColor: Colors.green,
          ),
    );
  }
}
