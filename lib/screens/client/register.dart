import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "/Users/furkangul/Lessons/Flutter/mobile_project_3/assets/images/register.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Join Us',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(height: 30),
              input("Enter your Name"),
              const SizedBox(height: 10),
              input("Enter your Username"),
              const SizedBox(height: 10),
              input("Enter your Email"),
              const SizedBox(height: 10),
              input("Enter your Password"),
              input("Enter your Password again"),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => GoRouter.of(context).go("/login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 184, 184, 184),
                    shadowColor: Colors.white,
                    side: const BorderSide(
                        color: Color.fromARGB(255, 211, 211, 211), width: 1),
                  ),
                  child: const Text('Create Account',
                      style: TextStyle(color: Colors.black))),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget input(String shadowName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(hintText: shadowName),
      ),
    );
  }
}
