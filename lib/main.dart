import 'package:flutter/material.dart';
import 'views/action-button.dart';
import 'pages/login-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Flow',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Login Flow'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ActionButton(
              text: "Log In",
              textColor: Colors.white,
              backgroundColor: Colors.red[400],
              onPressed: () {
                _openLoginPage(context);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ActionButton(
              text: "Get Started",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              onPressed: () {
                _openCreateAccountPage(context);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }

  void _openLoginPage(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new LoginPage();
        },
        fullscreenDialog: true));
  }

  void _openCreateAccountPage(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new LoginPage();
        },
        fullscreenDialog: true));
  }
}
