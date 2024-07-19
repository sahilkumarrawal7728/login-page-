import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './second.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _login() {
    int? userValue = int.tryParse(username.text);
    int? passValue = int.tryParse(password.text);

    if (userValue != null && passValue == userValue * 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>FormPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid User")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Login Page"),
        backgroundColor: CupertinoColors.systemTeal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(labelText: "Enter username "),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(labelText: "Enter password "),
          ),
          ElevatedButton(onPressed: _login, child: Text("Login"))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: LoginPage()));
}
