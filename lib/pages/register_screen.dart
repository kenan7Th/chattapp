import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

const PrimaryColor = Color(0xff2B475E);

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  static String id = 'registerPage';
  String? myemail;
  String? mypassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 105.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/sheep.jpg'),
              ),
            ),
            Text(
              'Sheep Chat',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
              myonChanged: (data) {
                myemail = data;
              },
              myhintext: myemail,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextField(
              myonChanged: (data) {
                mypassword = data;
              },
              myhintext: 'Password',
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomButton(
              myonTap: () async {
                // var auth = FirebaseAuth.instance;

                // UserCredential userCredential=await auth.createUserWithEmailAndPassword(email: email, password: password);

                var auth = FirebaseAuth.instance;

                try {
                  // ignore: unused_local_variable
                  UserCredential userCredential =
                      await auth.createUserWithEmailAndPassword(
                    email: myemail,
                    password: mypassword,
                  );
                  // User successfully created
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
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
