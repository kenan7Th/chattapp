import 'package:flutter/material.dart';
import 'package:mychatter/widgets/custom_button.dart';
import 'package:mychatter/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/sheep.jpg'),
            Text(
              'Scholar Cat',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'LOGIN ',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            CustomTextField(
              myhintext: 'Email',
            ),
            CustomTextField(
              myhintext: 'Password',
            ),
            CustomButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ',
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
            )
          ],
        ),
      ),
    );
  }
}
