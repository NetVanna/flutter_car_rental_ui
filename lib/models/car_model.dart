

class Car {
  String image;
  int price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Car({
    required this.image,
    required this.price,
    required this.brand,
    required this.model,
    required this.co2,
    required this.fuelCons,
  });
}

List<Car> carList = [
  Car(
    image: "assets/images/bentley.png",
    price: 120,
    brand: "Bentley",
    model: "3A 9200",
    co2: "77/Km",
    fuelCons: "5,5 L",
  ),
  Car(
    image: "assets/images/cadillac.png",
    price: 500,
    brand: "Cadillac",
    model: "3A 9200",
    co2: "77/Km",
    fuelCons: "5,5 L",
  ),
  Car(
    image: "assets/images/maserati.png",
    price: 320,
    brand: "Maserati",
    model: "3A 9200",
    co2: "77/Km",
    fuelCons: "5,5 L",
  ),
  Car(
    image: "assets/images/rolls_royce.png",
    price: 560,
    brand: "Rolls Royce",
    model: "3A 9200",
    co2: "77/Km",
    fuelCons: "5,5 L",
  ),
];
