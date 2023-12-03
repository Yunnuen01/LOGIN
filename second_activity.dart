import 'package:flutter/material.dart';

class SecondActivity extends StatelessWidget {
  final bool isValid;

  SecondActivity({required this.isValid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Activity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isValid ? Icons.check_circle : Icons.cancel,
              size: 100.0,
              color: isValid ? Colors.green : Colors.red,
            ),
            SizedBox(height: 16.0),
            Text(
              isValid ? 'Usuario válido' : 'Usuario no válido',
              style: TextStyle(
                fontSize: 20.0,
                color: isValid ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
