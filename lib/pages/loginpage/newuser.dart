import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }

  void _login() async {
    print('Attempting login...');
    // Check if username and password match your criteria (e.g., hard-coded values)
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == 'demo' && password == 'password') {
      // If login is successful, store the username in shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('username', username);

      // Navigate to the next screen or perform any other actions
      // For simplicity, we'll just print a message
      print('Login successful');
    } else {
      // Handle incorrect login credentials
      print('Invalid username or password');
    }
  }
}