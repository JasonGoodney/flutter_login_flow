import 'package:flutter/material.dart';
import 'package:flutter_login_flow/pages/password-form-page.dart';

class EmailFormPage extends StatefulWidget {
  @override
  _EmailFormPageState createState() => _EmailFormPageState();
}

class _EmailFormPageState extends State<EmailFormPage> {
  final _formKey = GlobalKey<FormState>();

  bool _buttonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              onChanged: () => setState(
                  () => _buttonEnabled = _formKey.currentState.validate()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: "Email"),
                        autovalidate: true,
                        validator: (value) =>
                            value.isEmpty ? 'Enter your email' : null,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                onPressed: _buttonEnabled ? _handleOnPressed : null,
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Colors.red[400],
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleOnPressed() {
    if (_formKey.currentState.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PasswordFormPage()),
      );
    }
  }
}
