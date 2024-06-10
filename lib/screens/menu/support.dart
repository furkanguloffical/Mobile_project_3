import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_project_3/core/localizations.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
    return Padding(
      padding: const EdgeInsets.all(18.0),
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          answer,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
