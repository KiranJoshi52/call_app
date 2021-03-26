import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(app1());
}

class app1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialer',
      home: app2(),
    );
  }
}

class app2 extends StatefulWidget {
  @override
  _app2State createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialer'),
      ),
      body: app3(),
    );
  }
}

class app3 extends StatefulWidget {
  @override
  _app3State createState() => _app3State();
}

class _app3State extends State<app3> {
  TextEditingController c1;

  @override
  void initState() {
    c1 = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: c1,
        ),
        RaisedButton(
          color: Colors.blue,
          child: Text('Call'),
          onPressed: () {
            call1();
          },
        ),
      ],
    );
  }

  call1() {
    String phoneno = 'tel:' + c1.text;
    launch(phoneno);
  }
}
