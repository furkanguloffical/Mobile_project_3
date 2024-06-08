import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ratesAndServicesScreen extends StatefulWidget {
  const ratesAndServicesScreen({super.key});

  @override
  State<ratesAndServicesScreen> createState() => _ratesAndServicesScreenState();
}

class _ratesAndServicesScreenState extends State<ratesAndServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("ratesAndServices Screen"),
          const Gap(20),
          IconButton(
            onPressed: () => GoRouter.of(context).go("/home"),
            icon: const Icon(CupertinoIcons.chevron_back),
          ),
        ],
      ))),
    );
  }
}
