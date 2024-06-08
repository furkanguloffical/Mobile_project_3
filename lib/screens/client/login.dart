import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Email',
                style: TextStyle(
                    fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter your email"),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter your Password"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => GoRouter.of(context).go("/home"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.1),
                        shadowColor: Colors.white,
                        side: BorderSide(
                            color: Color.fromARGB(255, 211, 211, 211),
                            width: 1),
                      ),
                      child:
                          Text('Login', style: TextStyle(color: Colors.black))),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () => GoRouter.of(context).go("/register"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.1),
                        shadowColor: Colors.white,
                        side: BorderSide(
                            color: Color.fromARGB(255, 211, 211, 211),
                            width: 1),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
