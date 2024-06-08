import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
              Container(
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(width: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
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
              InkwellMenu(context, "Home", '/home', Icon(Icons.home)),
              InkwellMenu(context, "Track Shipment ", '/trackShipment',
                  Icon(Icons.search)),
              InkwellMenu(context, "Create Shipment ", '/createShipment',
                  Icon(Icons.add_box)),
              InkwellMenu(
                  context, "My Shipments ", '/myShipment', Icon(Icons.inbox)),
              InkwellMenu(context, "Rates and Services  ", '/ratesAndServices',
                  Icon(Icons.monetization_on)),
              InkwellMenu(
                  context, "Support", '/support', Icon(Icons.support_agent)),
              InkwellMenu(context, "Find a Location ", '/findALocation',
                  Icon(Icons.location_on)),
              InkwellMenu(context, "Profile", '/profile', Icon(Icons.person)),
              InkwellMenu(context, "Notifications", '/notifications',
                  Icon(Icons.notifications)),
              InkwellMenu(
                  context, "Settings", '/settings', Icon(Icons.settings)),
              InkwellMenu(context, "Contact ", '/contact', Icon(Icons.call)),
              InkwellMenu(context, "About Us", '/about', Icon(Icons.person)),
              InkwellMenu(context, "Logout", '/', Icon(Icons.logout)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage(
                          '/Users/furkangul/Lessons/Flutter/mobile_project_3/assets/images/person.jpg'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Keyvan Arasteh',
                      style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
              ProfileText("Username: keyvanarasteh"),
              SizedBox(height: 10),
              ProfileText("Email: keyvan.arasteh@live.com"),
              SizedBox(height: 10),
              ProfileText("Phone: 0123456789"),
              SizedBox(height: 10),
              ProfileText("Address: Istanbul / Turkey"),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(8.0),
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

  Container ProfileLibraryPhoto(photo) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(
        photo,
        width: 150,
      ),
    );
  }

  Widget ProfileText(text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 0, 0, 0),
          width: 1,
        ),
        color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 15, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}

InkWell InkwellMenu(
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
          SizedBox(width: 10),
          Text(name),
        ],
      ),
    ),
  );
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Email: info@globalreachlogistics.com',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            'Phone: +90 (212) 123-4567',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.facebook, color: Colors.white),
                onPressed: () => GoRouter.of(context).go("/about"),
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.mail, color: Colors.white),
                onPressed: () => GoRouter.of(context).go("/contact"),
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.phone, color: Colors.white),
                onPressed: () => GoRouter.of(context).go("/contact"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
