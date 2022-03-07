import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  String _email = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            SizedBox(
              height: 10.0,
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
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Entrez votre email"),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      onChanged: (value) => setState(() => _email = value),
                      validator: (value) =>
                          value!.isEmpty || !emailRegex.hasMatch(value)
                              ? 'Please enter a valid email'
                              : null,
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
                      onPressed: emailRegex.hasMatch(_email)
                          ? () {
                              if (_formKey.currentState!.validate()) {
                                print(_email);
                              }
                            }
                          : null,
                      child: Text(
                        "continuer".toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
          ]),
        ),
      ),
    ));
  }
}
