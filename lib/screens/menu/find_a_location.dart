import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/core/localizations.dart';

class FindALocationScreen extends StatefulWidget {
  const FindALocationScreen({super.key});

  @override
  State<FindALocationScreen> createState() => _FindALocationScreenState();
}

class _FindALocationScreenState extends State<FindALocationScreen> {
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
                          const Text(
                            "Menu",
                            style: TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(20),
            LocationSearch(),
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
      Navigator.pop(context); // Close the drawer
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

class LocationSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Image.network(
                "https://cdn-icons-png.freepik.com/512/7678/7678588.png"),
          ),

          const TextField(
            decoration: InputDecoration(
              labelText: 'Search for a location',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const Gap(20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Search'),
          ),
          const Gap(20),
          // Placeholder for search results
          const Text('Search results will appear here'),
        ],
      ),
    );
  }
}
