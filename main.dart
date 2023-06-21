import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'я тут',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovingButtonScreen(),
    );
  }
}

class MovingButtonScreen extends StatefulWidget {
  @override
  _MovingButtonScreenState createState() => _MovingButtonScreenState();
}

class _MovingButtonScreenState extends State<MovingButtonScreen> {
  double _buttonX = 0;
  double _buttonY = 0;

  void _moveButton() {
    setState(() {
      final random = Random();
      _buttonX = random.nextDouble() * 300;
      _buttonY = random.nextDouble() * 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ну давай сучка нажми мене'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: _buttonY,
              left: _buttonX,
              child: ElevatedButton(
                onPressed: _moveButton,
                child: Text('Я тут'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
