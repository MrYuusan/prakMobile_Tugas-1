import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Column(
          children: [
            logo(),
            email(),
            password(),
            loginButton(context),
            forgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Container(
      padding: EdgeInsets.only(top: 120, bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }

  Widget email() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            labelText: 'E-mail',
            hintText:
                'Masukkan alamat e-mail yang valid seperti abc@gmail.com'),
      ),
    );
  }

  Widget password() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          labelText: 'Password',
          hintText: 'Password',
        ),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }

  Widget forgotPassword(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.grey,
        ),
        onPressed: () {},
        child: const Text('Forgot Password?'),
      ),
    );
  }
}
