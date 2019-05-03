import 'dart:async';

import 'package:cross_sensors/models/storage/storage.dart';
import 'package:cross_sensors/models/utils.dart';
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class Home extends StatefulWidget {
  final Storage storage;
  Home({
    Key key,
    @required this.storage,
  }) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _buttonColor = Colors.green;
  var _buttonText = 'START';
  var _buttonBressed = false;

  List<double> _accelerometerValues;
  List<double> _gyroscopeValues;
  List<StreamSubscription<dynamic>> _streamSubscriptions =
      <StreamSubscription<dynamic>>[];

  @override
  Widget build(BuildContext context) {
    final List<String> accelerometer =
        _accelerometerValues?.map((double v) => v.toStringAsFixed(1))?.toList();
    final List<String> gyroscope =
        _gyroscopeValues?.map((double v) => v.toStringAsFixed(1))?.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Sensors'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Accelerometer: $accelerometer',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Gyroscope: $gyroscope',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 150),
            Center(
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
                        starDataRecordings();
                        _buttonText = "STOP";
                        _buttonColor = Colors.red;
                      } else {
                        _buttonText = "START";
                        _buttonColor = Colors.green;
                        stopDataRecordings();
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    stopDataRecordings();
  }

  void starDataRecordings() {
    _streamSubscriptions
        .add(accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _accelerometerValues = <double>[event.x, event.y, event.z];
        print(_accelerometerValues);

        widget.storage.writeSensorData('$_accelerometerValues');
      });
    }));

    _streamSubscriptions.add(gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        _gyroscopeValues = <double>[event.x, event.y, event.z];
        print(_gyroscopeValues);
      });
    }));
  }

  void stopDataRecordings() {
    for (StreamSubscription<dynamic> subscription in _streamSubscriptions) {
      subscription.cancel();
    }
  }
}
