import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textEditController = new TextEditingController();
  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController,
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  var textEditController1 = new TextEditingController();
  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController1,
        decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Password',
            hintText: 'Mode 6 character'),
      ),
    );
  }

  Widget buttonRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Login'),
        onPressed: () {
          
        },
      ),
    );
  }

  Widget buttonsRegis() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
        color: Colors.purple[400],
        label: Text('Register'),
        onPressed: () {
          var route =
              MaterialPageRoute(builder: (BuildContext context) => Home());
          Navigator.of(context).push(route);
        },
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
             
              emailText(),
              passwordText(),
              buttonRegis(),
              buttonsRegis(),
            ],
          ),
        ),
      ),
    ));
  }
}
