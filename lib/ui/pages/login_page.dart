import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:dependo/ui/routing/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100
            ),
            Text("Welcome Back", style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),),
            Text("For Fun", style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: Theme.of(context).textTheme.headline4!.fontSize
            ),),
            SizedBox(
                height: 40
            ),
            Text("Sign in here", style: TextStyle(
                color: Colors.black54
            ),),
            SizedBox(
                height: 10
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email"
                    ),
                  ),
                  SizedBox(
                      height: 10
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(
                      height: 50
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      elevation: 0,
                      minimumSize: Size(double.infinity, 55),
                    ),
                    onPressed: () {},
                    child: Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                  ),
                  SizedBox(
                    height: 50
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Don't have an account",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          children: [
                            TextSpan(
                                text: " Register here",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pushRoute(RegistrationRoute());
                                  }
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),)
      ))
    );
  }
}
