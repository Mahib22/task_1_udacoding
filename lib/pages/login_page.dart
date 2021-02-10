import 'package:flutter/material.dart';
import 'package:task_1/theme.dart';
import 'package:task_1/widgets/button_form.dart';
import 'package:task_1/widgets/input_form.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textYellowColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              'Blogging',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  InputForm(
                    obscureText: false,
                    icon: Icons.person,
                    hintText: 'Full Name',
                  ),
                  SizedBox(height: 20),
                  InputForm(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.alternate_email,
                    hintText: 'Valid Email',
                  ),
                  SizedBox(height: 20),
                  InputForm(
                    obscureText: true,
                    icon: Icons.lock,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 20),
                  InputForm(
                    obscureText: true,
                    icon: Icons.lock,
                    hintText: 'Confirm Password',
                  ),
                  SizedBox(height: 30),
                  ButtonForm(
                    text: 'Sign Up',
                    color: textWhiteColor,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
