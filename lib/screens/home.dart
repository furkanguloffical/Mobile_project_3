import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 255, 255, 255), // AppBar'ın sabit rengi
        elevation: 0.0,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(50),
              Header(),
              const Gap(25),
              const Divider(
                color: Colors.black,
                thickness: 2, // Çizginin kalınlığı
                indent: 20, // Sol taraftan boşluk
                endIndent: 20, // Sağ taraftan boşluk
              ),
              const Gap(25),
              FeaturesSection(),
              const Gap(25),
              const Divider(
                color: Colors.black,
                thickness: 2, // Çizginin kalınlığı
                indent: 20, // Sol taraftan boşluk
                endIndent: 20, // Sağ taraftan boşluk
              ),
              const Gap(25),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: SafeArea(
                  child: Column(
                    children: [
                      Text(
                        'Our Advantages',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Gap(15),
                      Text(
                        'Customer satisfaction and safe delivery are our top priorities. With fast and trackable shipments, competitive prices, insured options, and a 24/7 customer support line, we are here for you.',
                        style: TextStyle(fontSize: 16),
                      ),
                      Gap(15),
                      Text(
                        'Promotions and Discounts',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Gap(15),
                      Text(
                        'At Shipping Company, we regularly offer promotions and special discounts. With discounted rates, free delivery options, and loyalty programs, we thank our valued customers.',
                        style: TextStyle(fontSize: 16),
                      ),
                      Gap(15),
                      Text(
                        'Contact Information',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Gap(15),
                      Text(
                        'If you have any questions or need assistance, feel free to contact us. You can reach us at our 24/7 customer support line or visit our branches for assistance. We look forward to serving you.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(25),
              const Divider(
                color: Colors.black,
                thickness: 2, // Çizginin kalınlığı
                indent: 20, // Sol taraftan boşluk
                endIndent: 20, // Sağ taraftan boşluk
              ),
              const Gap(25),
              Testimonials(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: const Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Welcome to Global Reach Logistics',
            style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 15, 152, 183),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          // InkWell(
          //   onTap: () => GoRouter.of(context).go("/"),
          //   child: const Text(
          //     "Beytullah ",
          //     style: TextStyle(fontSize: 18, color: Colors.white),
          //   ),
          //),
        ],
      ),
    );
  }
}

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Services',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Our services
                FeatureItem(
                  icon: Icons.local_shipping,
                  title: 'Fast Delivery',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.security,
                  title: 'Secure',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.eco,
                  title: 'Eco-Friendly',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.public,
                  title: 'International ',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.shopping_cart,
                  title: 'E-commerce ',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.warehouse,
                  title: 'Warehousing',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.account_balance,
                  title: 'Customs Brokerage',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.delivery_dining,
                  title: 'Last-Mile Delivery',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.ac_unit,
                  title: 'Cold Chain ',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.undo,
                  title: 'Reverse Logistics',
                ),
                const Gap(20),
                FeatureItem(
                  icon: Icons.flash_on,
                  title: 'Same-Day Delivery',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;

  FeatureItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        const SizedBox(height: 10),
        Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
      ],
    );
  }
}

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What Our Customers Say',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          TestimonialItem(
            text:
                'Global Reach Logistics provided excellent service and timely delivery.',
            author: 'Keyvan Arasteh',
          ),
          TestimonialItem(
            text: 'Very reliable and secure shipping. Highly recommended!',
            author: 'Furkan Gul',
          ),
          TestimonialItem(
            text:
                'I am very impressed with the speed and reliability of Shipping Company\'s delivery service.',
            author: 'Sophia Rodriguez',
          ),
          TestimonialItem(
            text: 'Fast delivery and easy tracking. Highly recommended!',
            author: 'Alexander Smith',
          ),
        ],
      ),
    );
  }
}

class TestimonialItem extends StatelessWidget {
  final String text;
  final String author;

  TestimonialItem({required this.text, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              '- $author',
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Us',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Email: info@globalreachlogistics.com',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            'Phone: +90 (212) 123-4567',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
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
