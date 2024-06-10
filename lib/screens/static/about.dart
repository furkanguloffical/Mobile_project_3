import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/core/localizations.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
              SafeArea(
                child: InkWell(
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
            Product(),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Container(
    color: Colors.grey[200],
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Track Your Shipment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your tracking number',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => GoRouter.of(context).go("/trackShipment"),
          child: const Text('Track'),
        ),
      ],
    ),
  );
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

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Our Mission',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Our mission is to provide reliable and efficient shipping solutions to our customers. We are dedicated to ensuring timely deliveries and excellent customer service, making your shipping experience smooth and hassle-free.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Our Vision',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Our vision is to become the world’s most trusted and innovative shipping company. We aim to lead the industry in customer satisfaction and operational excellence, continuously adapting to the evolving needs of our clients.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Our Values',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Safety, Reliability, and Integrity are the core values that guide our operations. We believe in building lasting relationships with our customers through trust, transparency, and exceptional service.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'For more information or assistance, please contact us at support@shippingcompany.com or call us at (123) 456-7890. Our customer service team is here to help you with all your shipping needs.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
