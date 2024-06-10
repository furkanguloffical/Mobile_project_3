import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mobile_project_3/core/localizations.dart';
import 'package:mobile_project_3/core/themes.dart';
import '/core/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/client/client_cubit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ClientCubit(ClientState(darkMode: false, language: "en")),
      child: BlocBuilder<ClientCubit, ClientState>(builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
          themeMode: state.darkMode ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('tr', 'TR'),
            Locale('fa', 'IR')
          ],
          locale: Locale(state.language),
        );
      }),
    );
  }
}
