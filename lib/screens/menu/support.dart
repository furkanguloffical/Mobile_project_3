import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class supportScreen extends StatefulWidget {
  const supportScreen({super.key});

  @override
  State<supportScreen> createState() => _supportScreenState();
}

class _supportScreenState extends State<supportScreen> {
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
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Track Your Shipment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your tracking number',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => GoRouter.of(context).go("/trackShipment"),
          child: Text('Track'),
        ),
      ],
    ),
  );
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

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            'How can we help you?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Gap(10),
          const Divider(),
          const Gap(10),
          SupportCard(
            question: 'How do I track my package?',
            answer:
                'You can track your package using the tracking number provided to you. Enter it on our tracking page to see the latest updates.',
          ),
          const Divider(),
          SupportCard(
            question: 'What are your shipping rates?',
            answer:
                'Our shipping rates vary depending on the service chosen and the destination. Please visit our rates page for detailed information.',
          ),
          const Divider(),
          SupportCard(
            question: 'How do I schedule a pickup?',
            answer:
                'To schedule a pickup, log into your account, go to the Schedule Pickup section, and fill out the required details. You can also call our customer service.',
          ),
          const Divider(),
          SupportCard(
            question: 'What is your delivery time?',
            answer:
                'Delivery times depend on the service selected. Express delivery takes 1-2 days, standard shipping takes 3-5 days, and international shipping times vary by destination.',
          ),
          const Divider(),
          SupportCard(
            question: 'How do I contact customer service?',
            answer:
                'You can contact our customer service via phone at 1-800-123-4567, email at support@globalreachlogistics.com, or through our live chat on the website.',
          ),
          const Divider(),
          SupportCard(
            question: 'What should I do if my package is lost?',
            answer:
                'If your package is lost, please contact our customer service immediately with your tracking number and shipment details. We will assist you in locating your package.',
          ),
          const Divider(),
          SupportCard(
            question: 'How do I file a claim for a damaged package?',
            answer:
                'To file a claim for a damaged package, fill out the claims form on our website, including photos of the damage and your shipment details. Our team will review and process your claim.',
          ),
        ],
      ),
    );
  }
}

class SupportCard extends StatelessWidget {
  final String question;
  final String answer;

  SupportCard({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          answer,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
