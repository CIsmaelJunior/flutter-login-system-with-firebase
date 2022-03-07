import 'package:flutter/material.dart';
import 'package:flutter_learn_projects/screen/guest/Auth.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
      theme: ThemeData(
          // primaryColor: Colors.green,
          ),
    );
  }
}
