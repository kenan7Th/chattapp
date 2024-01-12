import 'package:flutter/material.dart';
import 'package:mychatter/pages/login_page.dart';
import 'package:mychatter/pages/register_screen.dart';

void main() {
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
