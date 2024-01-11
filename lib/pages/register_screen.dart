import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 1,
            ),
            CircleAvatar(
              radius: 205.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 200.0,
                backgroundImage: AssetImage('images/sheep.jpg'),
              ),
            ),
            Text(
              'Scholar Cat',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text(
                  'Register ',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              myhintext: 'Email',
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              myhintext: 'Password',
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomButton(
              buttonTitle: 'Register',
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Color(0xffc7EDE6),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}