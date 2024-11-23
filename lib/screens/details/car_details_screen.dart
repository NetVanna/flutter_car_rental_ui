import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/car_items.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen(
      {super.key,
      required this.image,
      required this.price,
      required this.brand,
      required this.model,
      required this.co2,
      required this.fuelCons});

  final String image, price, brand, model, co2, fuelCons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/map.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          carDetailsAppBar(context),
          Positioned(
            left: 10,
            right: 10,
            bottom: 25,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(
                      left: 25, bottom: 15, right: 20, top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: backgroundColor,
                  ),
                  child: Column(
                    children: [
                      carDetailsInformation(),
                      const Divider(
                        height: 15,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/driver.png",
                            height: 150,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Jessica Smith",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "License: MWR 369323",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "360",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Rider",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                const Row(
                                  children: [
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: const Text(
                                        "Call",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: cardColor,
                                      ),
                                      child: const Text(
                                        "Book Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Hero(
                    tag: image,
                    child: Image.asset(image),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column carDetailsInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\$${price}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "price/hr",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarItems(
              name: 'Brand',
              value: brand,
              textColor: Colors.black,
            ),
            CarItems(
              name: 'Model No',
              value: model,
              textColor: Colors.black,
            ),
            CarItems(
              name: 'CO2',
              value: co2,
              textColor: Colors.black,
            ),
            CarItems(
              name: 'Fule Cons',
              value: fuelCons,
              textColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  SafeArea carDetailsAppBar(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
          const Text(
            "Car Details",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
