import 'package:flutter/material.dart';
import 'package:mychatter/constants.dart';
import 'package:mychatter/pages/register_screen.dart';

import 'package:mychatter/widgets/custom_button.dart';
import 'package:mychatter/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 75,
            ),
            // CircleAvatar(
            //   radius: 105.0,
            //   backgroundColor: Colors.white,
            //   child: CircleAvatar(
            //     radius: 100.0,

            //     backgroundImage: AssetImage('images/sheep.jpg'),
            //   ),

            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                'images/sheep.jpg',
                height: 100,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sheep Chat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  'LOGIN ',
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
              buttonTitle: 'Login',
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Color(0xffc7EDE6),
                    ),
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
