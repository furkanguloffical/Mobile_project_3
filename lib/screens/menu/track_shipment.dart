import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class TranckShipmentScreen extends StatefulWidget {
  const TranckShipmentScreen({super.key});

  @override
  State<TranckShipmentScreen> createState() => _TranckShipmentScreenState();
}

class _TranckShipmentScreenState extends State<TranckShipmentScreen> {
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
              inkwellMenu(context, "Home", '/home', const Icon(Icons.home)),
              inkwellMenu(context, "Track Shipment ", '/trackShipment',
                  const Icon(Icons.search)),
              inkwellMenu(context, "Create Shipment ", '/createShipment',
                  const Icon(Icons.add_box)),
              inkwellMenu(context, "My Shipments ", '/myShipment',
                  const Icon(Icons.inbox)),
              inkwellMenu(context, "Rates and Services  ", '/ratesAndServices',
                  const Icon(Icons.monetization_on)),
              inkwellMenu(context, "Support", '/support',
                  const Icon(Icons.support_agent)),
              inkwellMenu(context, "Find a Location ", '/findALocation',
                  const Icon(Icons.location_on)),
              inkwellMenu(
                  context, "Profile", '/profile', const Icon(Icons.person)),
              inkwellMenu(context, "Notifications", '/notifications',
                  const Icon(Icons.notifications)),
              inkwellMenu(
                  context, "Settings", '/settings', const Icon(Icons.settings)),
              inkwellMenu(
                  context, "Contact ", '/contact', const Icon(Icons.call)),
              inkwellMenu(
                  context, "About Us", '/about', const Icon(Icons.person)),
              inkwellMenu(
                  context, "Logout", '/login', const Icon(Icons.logout)),
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.network(
                    "https://img.freepik.com/free-vector/hand-drawn-delivery-concept-with-smartphone_23-2149149267.jpg?size=626&ext=jpg&ga=GA1.1.672697106.1717632000&semt=ais_user"),
                const Gap(30),
                TrackingSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrackingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
