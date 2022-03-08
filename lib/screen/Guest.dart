import 'package:flutter/material.dart';
import 'package:flutter_learn_projects/screen/guest/Auth.dart';
import 'package:flutter_learn_projects/screen/guest/Password.dart';
import 'package:flutter_learn_projects/screen/guest/Term.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({Key? key}) : super(key: key);

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List<Widget> _widgets = [];
  int _indexSelected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _widgets.addAll([
      AuthScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
      TermScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
      PasswordScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _widgets.elementAt(_indexSelected),
    );
  }
}
