import 'package:flutter/material.dart';

import '../MyRoute.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  final FrmKey = GlobalKey<FormState>();

  void method1() async {
    if (FrmKey.currentState!.validate()) {
      Navigator.pushNamed(context, Myroute.HomeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 30,
              ),
              child: Image(
                  image: AssetImage(
                    "assets/images/login.png",
                  ),
                  fit: BoxFit.cover),
            ),
            Text(
              "Welcome ${name}",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Form(
                key: FrmKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          name = value.toString();
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Can't be Empty";
                          }
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                      validator: (value) {
                        String Pass = value!;
                        if (Pass.length < 4) {
                          return "Password should be at least 4 Characters";
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, Myroute.HomeRoute);
                    //     },
                    //     child: Text("Submit Login",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.w400)),
                    //     style: TextButton.styleFrom(),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(7),
              child: InkWell(
                onTap: () => method1(),
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  // color: Colors.deepPurple,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  // decoration: BoxDecoration(
                  //   color: Colors.deepPurple,
                  //   borderRadius: BorderRadius.circular(7),
                  // ),
                ),
              ),
            )
          ]),
        ));
  }
}
