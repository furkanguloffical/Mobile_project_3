import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/core/storage.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  loadApp() async {
    final storage = Storage();
    //storage.clearStorage();
    final firstLaunch = await storage.isFirstLaunch();

    if (firstLaunch) {
      // Cihazın gece gündüz moduna erişmek
      final darkMode =
          WidgetsBinding.instance.window.platformBrightness == Brightness.dark;

      // Cihazın varsayılan diline erişmek
      await storage.setConfig(
        language: getDeviceLanguage(),
        darkMode: darkMode,
      );

      // Kullanıcıyı onboarding ekranına yönlendirme
      await loadData();
      GoRouter.of(context).replace("/boarding");
    } else {
      // Ana ekrana git
      final config = await storage.getConfig();

      if (config["language"] == null) {
        await storage.setConfig(language: getDeviceLanguage());
      }

      if (config["darkMode"] == null) {
        final darkMode = WidgetsBinding.instance.window.platformBrightness ==
            Brightness.dark;
        await storage.setConfig(darkMode: darkMode);
      }

      // Kullanıcıyı login ekranına yönlendirme
      await loadData();
      GoRouter.of(context).replace("/login");
    }
  }

  String getDeviceLanguage() {
    final String defaultLocale;
    if (!kIsWeb) {
      defaultLocale = Platform.localeName;
    } else {
      defaultLocale = "en";
    }
    final langParts = defaultLocale.split("_");
    final supportedLanguages = ["en", "tr", "fr", "es"];

    final String finalLang;

    if (supportedLanguages.contains(langParts[0])) {
      finalLang = langParts[0];
    } else {
      finalLang = "en";
    }

    return finalLang;
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(milliseconds: 2500));
  }

  @override
  void initState() {
    super.initState();
    loadApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Image.network(
                  "https://i.pinimg.com/originals/c3/c4/09/c3c40926dca06a97dd0562753d63b7f4.png",
                  height: 150,
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
