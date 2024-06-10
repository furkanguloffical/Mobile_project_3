import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgatPasswordScreen extends StatefulWidget {
  const ForgatPasswordScreen({super.key});

  @override
  State<ForgatPasswordScreen> createState() => _ForgatPasswordScreenState();
}

class _ForgatPasswordScreenState extends State<ForgatPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "/Users/furkangul/Lessons/Flutter/mobile_project_3/assets/images/forgat.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Your Email Address"),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () => GoRouter.of(context).go("/login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.9),
                    shadowColor: Colors.white,
                    side: const BorderSide(
                        color: Color.fromARGB(255, 211, 211, 211), width: 1),
                  ),
                  child: const Text('Send Verification Code',
                      style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
      ),
    );
  }
}
