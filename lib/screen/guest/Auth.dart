import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("AS")),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 100.0,
          ),
          RichText(
            text: TextSpan(
                text: "Everyone has\n".toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 30.0),
                children: [
                  TextSpan(
                      text: "knowledge\n".toUpperCase(),
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: "to share.".toUpperCase()),
                ]),
          ),
          Text("It all starts here."),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Enter your email",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Entrez votre email"),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "john.doe@gmail.com",
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
          ))
        ]),
      ),
    ));
  }
}
