import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/core/localizations.dart';
import '../../bloc/client/client_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  String selectedLanguage = 'en';
  bool DarkModeEnabled = false;
  late ClientCubit clientCubit;

  @override
  void initState() {
    super.initState();
    clientCubit = context.read<ClientCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          "https://i.pinimg.com/originals/c3/c4/09/c3c40926dca06a97dd0562753d63b7f4.png",
          height: 80,
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 80,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/home'),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context).getTranslate("menu"),
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () => GoRouter.of(context).pop(),
                            icon: const Icon(CupertinoIcons.chevron_back),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu1"),
                  '/home',
                  const Icon(Icons.home)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu2"),
                  '/trackShipment',
                  const Icon(Icons.search)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu3"),
                  '/createShipment',
                  const Icon(Icons.add_box)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu4"),
                  '/myShipment',
                  const Icon(Icons.inbox)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu5"),
                  '/ratesAndServices',
                  const Icon(Icons.monetization_on)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu6"),
                  '/support',
                  const Icon(Icons.support_agent)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu7"),
                  '/findALocation',
                  const Icon(Icons.location_on)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu8"),
                  '/profile',
                  const Icon(Icons.person)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu9"),
                  '/notifications',
                  const Icon(Icons.notifications)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu10"),
                  '/settings',
                  const Icon(Icons.settings)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu11"),
                  '/contact',
                  const Icon(Icons.call)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("menu12"),
                  '/about',
                  const Icon(Icons.person)),
              inkwellMenu(
                  context,
                  AppLocalizations.of(context).getTranslate("Logout"),
                  '/login',
                  const Icon(Icons.logout)),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(50),
                        Text(
                          "Language: ${clientCubit.state.language}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 17),
                        ),
                        const Gap(10),
                        Text(
                          "DarkMode: ${clientCubit.state.darkMode}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 17),
                        ),
                        const Gap(10),
                      ],
                    ),
                    const Gap(40),
                    DropdownButton<String>(
                      value: selectedLanguage,
                      items: const [
                        DropdownMenuItem(
                          value: 'en',
                          child: Text('English'),
                        ),
                        DropdownMenuItem(
                          value: 'es',
                          child: Text('Spanish'),
                        ),
                        DropdownMenuItem(
                          value: 'fr',
                          child: Text('French'),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLanguage = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
            const Divider(
              color: Colors.black,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const Gap(10),
            SwitchListTile(
              title:
                  Text(AppLocalizations.of(context).getTranslate("DarkMode")),
              value: DarkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  DarkModeEnabled = value;
                  clientCubit.changeDarkMode(darkMode: value);
                });
              },
            ),

            const Gap(10),
            const Divider(
              color: Colors.black,
              thickness: 2, // Çizginin kalınlığı
              indent: 20, // Sol taraftan boşluk
              endIndent: 20, // Sağ taraftan boşluk
            ),
            const Gap(10),

            ListTile(
              title: Text(
                  AppLocalizations.of(context).getTranslate("PrivacyPolicy")),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                GoRouter.of(context).go("/privacyPolicy");
              },
            ),
            const Gap(10),
            const Divider(
              color: Colors.black,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const Gap(10),
            ListTile(
              title: Text(
                  AppLocalizations.of(context).getTranslate("ChangePassword")),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                GoRouter.of(context).go("/changePassword");
              },
            ),
            const Gap(10),
            const Divider(
              color: Colors.black,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            const Gap(10),
            //Diğer bir Yöntem
            // ElevatedButton(
            //     onPressed: () {
            //       clientCubit.changeDarkMode(darkMode: true);
            //     },
            //     child: const Text("Dark Mode")),
            // Gap(20),
            // ElevatedButton(
            //     onPressed: () {
            //       clientCubit.changeDarkMode(darkMode: false);
            //     },
            //     child: const Text("Light Mode")),
          ],
        ),
      ),
    );
  }
}

InkWell inkwellMenu(
    BuildContext context, String name, String route, Icon icon) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
      GoRouter.of(context).go(route);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          icon,
          const SizedBox(width: 10),
          Text(name),
        ],
      ),
    ),
  );
}
