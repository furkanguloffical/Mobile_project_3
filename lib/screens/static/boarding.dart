import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preload_page_view/preload_page_view.dart';

import '../../core/storage.dart';
import '../../widgets/boarding-widgets.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  final boardingData = [
    {
      "img":
          "https://allvectorlogo.com/img/2019/10/global-reach-internet-productions-llc-logo-vector.png",
      "title": "Welcome!",
      "description":
          "At Global Reach Logistics, we take pride in offering reliable and fast delivery services to our valued customers. ",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/006/562/199/non_2x/parcel-delivery-company-semi-flat-rgb-color-illustration-male-carrier-standing-near-delivery-van-isolated-cartoon-character-on-white-background-vector.jpg",
      "title": "Customer Satisfaction Comes First",
      "description":
          "We work diligently to ensure the safety and timely delivery of your shipments. From the moment your package is handed over to us until it reaches its destination, we keep you informed at every step.",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/004/379/352/non_2x/delivery-van-driver-with-parcels-flat-character-courier-postman-deliveryman-holding-cardboard-boxes-and-order-receipt-isolated-cartoon-illustration-on-white-background-shipping-service-transport-vector.jpg",
      "title": "Innovative Technology Integration",
      "description":
          "Our company is committed to utilizing cutting-edge technology to enhance our logistics solutions. With state-of-the-art vehicles and equipment, we guarantee the highest level of security and care for your shipments.",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/022/841/070/original/delivery-courier-delivery-couriers-using-map-cars-and-clocks-concept-of-delivering-goods-on-time-free-png.png",
      "title": "Global Reach, Local Touch",
      "description":
          "You can order what you want in just seconds using our awesome application.",
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/previews/002/399/285/original/delivery-courier-man-with-a-box-delivery-of-goods-vector.jpg",
      "title": "Wherever You Are, We Are There",
      "description":
          "Our extensive network allows us to reach destinations worldwide. No matter where you need to send your package, Global Reach Logistics is there.",
    },
  ];

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () async {
                final storage = Storage();
                await storage.firstLauched();
                GoRouter.of(context).go("/home");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  // Kullanıcının rahat tıklaması için text'e padding verdik.
                  padding: const EdgeInsets.all(8.0),
                  child: page == 2 ? const Text("Finish") : const Text("Skip"),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: PreloadPageView.builder(
            itemCount: boardingData.length,
            preloadPagesCount: boardingData.length,
            onPageChanged: (value) {
              setState(() {
                page = value;
              });
            },
            itemBuilder: (context, index) => BoardingItem(
              img: boardingData[index]["img"]!,
              description: boardingData[index]["description"]!,
              title: boardingData[index]["title"]!,
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Align(
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: boardingData.length,
            itemBuilder: (context, index) => Icon(
              page == index
                  ? CupertinoIcons.circle_filled
                  : CupertinoIcons.circle,
            ),
          ),
        ),
      ),
    );
  }
}
