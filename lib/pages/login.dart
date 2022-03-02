import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 8,
            ),
            child: Image(
                image: AssetImage(
                  "assets/images/login.png",
                ),
                fit: BoxFit.cover),
          ),
          Text(
            "Login Here...",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Submit Login",
                    ),
                    style: TextButton.styleFrom(),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
