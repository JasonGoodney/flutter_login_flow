import 'package:flutter/material.dart';
import 'package:flutter_login_flow/pages/email-form-page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return EmailFormPage();
  }
}
