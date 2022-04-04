import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email,color: Theme.of(context).primaryColor,),
              labelText: "email",
              border: InputBorder.none),
        ),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.key,color: Theme.of(context).primaryColor),
              labelText: "password",
              border: InputBorder.none),
        ),
      ],
    ));
  }
}
