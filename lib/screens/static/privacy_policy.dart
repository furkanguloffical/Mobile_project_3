import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 2, // Çizginin kalınlığı
                indent: 20, // Sol taraftan boşluk
                endIndent: 20, // Sağ taraftan boşluk
              ),
              Gap(25),
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                '[Company Name] ("we," "our," "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website [www.companyname.com], use our mobile application, or use our services (collectively, the "Services"). Please read this privacy policy carefully. If you do not agree with the terms of this privacy policy, please do not access the site.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Information We Collect',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                'We collect personal and non-personal information you voluntarily provide to us when accessing the Services, such as name, email address, phone number, and payment information. This information is used to provide and improve the Services and to communicate with you.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'How We Use Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                'We may use the information collected in various ways, including to operate and maintain the Services, to send you promotional communications, to respond to your comments and inquiries, and to analyze how you use the Services.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Disclosure of Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                'We may disclose your personal information to third parties for business purposes or when required by law. We may also share non-personal information with third parties for marketing, advertising, or other uses.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Security of Your Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                'We take reasonable measures to protect the information collected from loss, theft, misuse, unauthorized access, disclosure, alteration, and destruction. However, no method of transmission over the internet or electronic storage is 100% secure, so we cannot guarantee absolute security.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Changes to Our Privacy Policy',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(15),
              Text(
                'We reserve the right to modify this Privacy Policy at any time. Changes and clarifications will take effect immediately upon their posting on the website. You are encouraged to review this Privacy Policy periodically for any changes.',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
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
