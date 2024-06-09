import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ratesAndServicesScreen extends StatefulWidget {
  const ratesAndServicesScreen({super.key});

  @override
  State<ratesAndServicesScreen> createState() => _ratesAndServicesScreenState();
}

class _ratesAndServicesScreenState extends State<ratesAndServicesScreen> {
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
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Track Your Shipment',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Gap(10),
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
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ServiceCard(
              serviceName: 'Express Delivery',
              description:
                  'Get your packages delivered swiftly and securely with our express delivery service. Perfect for urgent shipments.',
              rate: '\$100',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'Standard Shipping',
              description:
                  'Our standard shipping service offers reliable and affordable delivery for all your packages.',
              rate: '\$150',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'International Shipping',
              description:
                  'We provide seamless international shipping solutions to ensure your packages reach any global destination on time.',
              rate: '\$200',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'Same Day Delivery',
              description:
                  'For those times when you need it now, our same-day delivery service guarantees your package will arrive within hours.',
              rate: '\$200',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'Overnight Shipping',
              description:
                  'Send your urgent packages overnight with our fast and efficient overnight shipping service.',
              rate: '\$200',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'Freight Services',
              description:
                  'Our freight services are ideal for large and heavy shipments, providing safe and reliable transport for your cargo.',
              rate: '\$200',
            ),
            Divider(),
            ServiceCard(
              serviceName: 'Eco-Friendly Shipping',
              description:
                  'Choose our eco-friendly shipping option to reduce your carbon footprint without compromising on service quality.',
              rate: '\$200',
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final String description;
  final String rate;

  const ServiceCard({
    required this.serviceName,
    required this.description,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              serviceName,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            Text(
              description,
              style: const TextStyle(fontSize: 16.0),
            ),
            const Gap(10),
            Text(
              rate,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
