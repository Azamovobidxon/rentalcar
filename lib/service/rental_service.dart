import 'package:rentalcars/pages/model.dart';
import 'package:rentalcars/repository/rental_repasitory.dart';
import 'dart:io';

class RentalService implements RentalRepository {
  List<Cars> rentalCar = [];
  List<Cars> existCar = [
    Cars(price: 50, name: "gentra", color: "black", number: 452),
    Cars(price: 50, name: "gentra", color: "white", number: 451),
    Cars(price: 80, name: "malibu", color: "black", number: 777),
    Cars(price: 30, name: "damas", color: "white", number: 352),
    Cars(price: 20, name: "matiz", color: "white", number: 435),
    Cars(price: 20, name: "matiz", color: "black", number: 435),
    Cars(price: 50, name: "onix", color: "black", number: 075),
    Cars(price: 100, name: "traverse", color: "black", number: 808),
    Cars(price: 150, name: "tahoe", color: "black", number: 452),
    Cars(price: 200, name: "Land Cruser", color: "black", number: 707),
    Cars(price: 90, name: "monza", color: "red", number: 365),
    Cars(price: 60, name: "nexia r3", color: "blue", number: 425),
  ];

  @override
  void showAllCar() {
    print("=======================");
    int count = 0;
    for (var car in existCar) {
      print("${count++}.$car");
    }
    print("========================");
  }

  @override
  void showAllRentalCar() {
    if (rentalCar.isEmpty) {
      print("Ijarada mashina mavjud emas!");
    }
    int count = 0;
    print("========================");
    for (var car in rentalCar) {
      print("${count++}.$car");
    }
    print("========================");
  }

  @override
  void giveRentalCar() {
    stdout.write("Mashinani nomini kiriting: ");
    String name = stdin.readLineSync() ?? "";

    stdout.write("Mashinani rangini kiriting: ");
    String color = stdin.readLineSync() ?? "";
    for (var car in existCar) {
      if (car.name == name && car.color == color) {
        rentalCar.add(car);
        existCar.remove(car);
        print("Mashina ijaraga berildi");
        return;
      }
    }
  }

  @override
  void giveBackCar() {
    stdout.write("Ijaraga berilgan mashinani nomini kiriting: ");
    String name = stdin.readLineSync() ?? "";

    stdout.write("Ijaraga berilagan mashinani rangini kiriting: ");
    String color = stdin.readLineSync() ?? "";

    for (var car in rentalCar) {
      if (car.name == name && car.color == color) {
        existCar.add(car);
        print("Mashina o'zgarishsiz qaytarildi");
        rentalCar.remove(car);
      }
    }
  }
}
