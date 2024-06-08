import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../bloc/client/client_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        title: Text('Home Page'),
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
              InkwellMenu(context, "Login", '/login', Icon(Icons.account_box)),
              InkwellMenu(context, "Track Shipment ", '/client/login.dart',
                  Icon(Icons.search)),
              InkwellMenu(context, "Create Shipment ", '/client/login.dart',
                  Icon(Icons.add_box)),
              InkwellMenu(context, "My Shipments ", 'client/favorite.dart',
                  Icon(Icons.inbox)),
              InkwellMenu(context, "Rates and Services  ", '/',
                  Icon(Icons.monetization_on)),
              InkwellMenu(context, "Support", '/', Icon(Icons.support_agent)),
              InkwellMenu(
                  context, "Find a Location ", '/', Icon(Icons.location_on)),
              InkwellMenu(context, "Profile", '/', Icon(Icons.person)),

              InkwellMenu(
                  context, "Notifications", '/', Icon(Icons.notifications)),
              InkwellMenu(context, "Settings", '/', Icon(Icons.settings)),
              InkwellMenu(context, "Contact ", '/', Icon(Icons.call)),
              InkwellMenu(context, "About Us", '/', Icon(Icons.person)),
              InkwellMenu(context, "Logout", '/', Icon(Icons.logout)),
              // ElevatedButton(
              //   onPressed: () {
              //     clientCubit.changeDarkMode(darkMode: true);
              //   },
              //   child: Text('DarkMode'),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     clientCubit.changeDarkMode(darkMode: false);
              //   },
              //   child: Text('LightMode'),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     // Kiralama işlevini burada gerçekleştirin
              //   },
              //   child: Text('Language'),
              // ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            FeaturesSection(),
            TrackingSection(),
            Testimonials(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color.fromARGB(255, 22, 180, 254),
      child: Column(
        children: [
          Image.network(
            "https://i.pinimg.com/originals/c3/c4/09/c3c40926dca06a97dd0562753d63b7f4.png",
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to Global Reach Logistics',
            style: TextStyle(fontSize: 24, color: Colors.white),
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
          Text(
            'Our Services',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureItem(
                  icon: Icons.local_shipping,
                  title: 'Fast Delivery',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.security,
                  title: 'Secure',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.eco,
                  title: 'Eco-Friendly',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.public,
                  title: 'International ',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.shopping_cart,
                  title: 'E-commerce ',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.warehouse,
                  title: 'Warehousing',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.account_balance,
                  title: 'Customs Brokerage',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.delivery_dining,
                  title: 'Last-Mile Delivery',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.ac_unit,
                  title: 'Cold Chain ',
                ),
                Gap(20),
                FeatureItem(
                  icon: Icons.undo,
                  title: 'Reverse Logistics',
                ),
                Gap(20),
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
        SizedBox(height: 10),
        Text(title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
      ],
    );
  }
}

class TrackingSection extends StatelessWidget {
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
}

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What Our Customers Say',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TestimonialItem(
            text:
                'PrimePath Logistics provided excellent service and timely delivery.',
            author: 'John Doe',
          ),
          TestimonialItem(
            text: 'Very reliable and secure shipping. Highly recommended!',
            author: 'Jane Smith',
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
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              '- $author',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
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
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.mail, color: Colors.white),
                onPressed: () {
                  // Navigate to Facebook page
                },
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.phone, color: Colors.white),
                onPressed: () {
                  // Navigate to Facebook page
                },
              ),
            ],
          ),
        ],
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
