import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isSecret = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        titleSpacing: 0.0,
        title: Row(
          children: [],
        ),
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Text(
                "password".toUpperCase(),
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 50.0),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Entrez votre mot de passe"),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: _isSecret,
                    decoration: InputDecoration(
                      suffix: InkWell(
                        onTap: () => setState(() => _isSecret = !_isSecret),
                        child: Icon(_isSecret
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: "sd!G43b5",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    onPressed: () => print("Send"),
                    child: Text(
                      "continuer".toUpperCase(),
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
