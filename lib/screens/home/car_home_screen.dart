import 'package:flutter/material.dart';
import 'package:flutter_car_rental/constants.dart';
import 'package:flutter_car_rental/models/car_model.dart';

import '../../widgets/car_items.dart';
import '../details/car_details_screen.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          "Available Car",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
        itemCount: carList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final cars = carList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsScreen(
                    image: cars.image,
                    price: cars.price.toString(),
                    brand: cars.brand,
                    model: cars.model,
                    co2: cars.co2,
                    fuelCons: cars.fuelCons,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: const EdgeInsets.only(
                        left: 25, bottom: 15, right: 20, top: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: cardColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${cars.price}",
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
                              value: cars.brand,
                            ),
                            CarItems(
                              name: 'Model No',
                              value: cars.model,
                            ),
                            CarItems(
                              name: 'CO2',
                              value: cars.co2,
                            ),
                            CarItems(
                              name: 'Fule Cons',
                              value: cars.fuelCons,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child:
                        Hero(tag: cars.image, child: Image.asset(cars.image)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
