import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _buttonColor = Colors.green;
  var _buttonText = 'START';
  var _buttonBressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Sensors'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            child: RaisedButton(
              color: _buttonColor,
              child: Text(
                _buttonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                _buttonBressed = !_buttonBressed;
                setState(() {
                  if (_buttonBressed) {
                    _buttonText = "STOP";
                    _buttonColor = Colors.red;
                  } else {
                    _buttonText = "START";
                    _buttonColor = Colors.green;
                  }
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(75)),
            ),
          ),
        ),
      ),
    );
  }
}
