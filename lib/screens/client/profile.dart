import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              inkwellMenu(context, "Logout", '/', const Icon(Icons.logout)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 82, 177,
                              255), // Sınır rengini buradan ayarlayabilirsiniz
                          width:
                              5.0, // Sınır kalınlığını buradan ayarlayabilirsiniz
                        ),
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                          '/Users/furkangul/Lessons/Flutter/mobile_project_3/assets/images/person.jpg'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Keyvan Arasteh',
                      style: TextStyle(
                          fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
              profileText("Username: keyvanarasteh"),
              const SizedBox(height: 10),
              profileText("Email: keyvan.arasteh@live.com"),
              const SizedBox(height: 10),
              profileText("Phone: 0123456789"),
              const SizedBox(height: 10),
              profileText("Address: Istanbul / Turkey"),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Container profileLibraryPhoto(photo) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(
        photo,
        width: 150,
      ),
    );
  }

  Widget profileText(text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 0, 0, 0),
          width: 1,
        ),
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
            ),
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
