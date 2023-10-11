import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 2,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset('assets/animation_lnksdput.json', height: 300),
              SizedBox(
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.manage_accounts),
                    hintText: 'Enter Email Address',
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.remove_red_eye),
                    hintText: 'Enter Password',
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 41, 148, 219),
                    minimumSize: Size(170, 60)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
