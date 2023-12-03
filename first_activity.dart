import 'package:flutter/material.dart';
import 'package:multiform/screens/second_activity.dart';

class FirstActivity extends StatefulWidget {
  @override
  _FirstActivityState createState() => _FirstActivityState();
}

class _FirstActivityState extends State<FirstActivity> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Lista para almacenar usuarios válidos
  List<Map<String, String>> validUsers = [
    {'username': 'Yunnuen', 'password': '1234'},
    {'username': 'Taquito', 'password': '5678'},
  ]; // Puedes agregar más usuarios válidos

  List<Map<String, String>> invalidUsers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Validar el usuario aquí
                String username = usernameController.text;
                String password = passwordController.text;

                bool isValidUser = validUsers.any((user) =>
                    user['username'] == username && user['password'] == password);

                if (isValidUser) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondActivity(isValid: true),
                    ),
                  );
                } else {
                  invalidUsers.add({'username': username, 'password': password});
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Usuario no válido'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
