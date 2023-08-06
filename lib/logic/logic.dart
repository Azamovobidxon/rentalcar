import 'dart:io';

import 'package:rentalcars/service/rental_service.dart';

class Logic {
  RentalService rentalService = RentalService();

  void runApp() {
    while (true) {
      print("""
      1.Barcha mashinalar royhati
      2.Ijaraga berilgan mashinalar royhati
      3.Ijaraga mashina berish
      4.Ijaraga berilgan mashinani qaytarib olish
      0.exit
      """);
      int operator = int.parse(stdin.readLineSync() ?? "");

      if (operator == 0) {
        break;
      }
      switch (operator) {
        case 1:
          rentalService.showAllCar();
        case 2:
          rentalService.showAllRentalCar();
        case 3:
          rentalService.giveRentalCar();
        case 4:
          rentalService.giveBackCar();
      }
    }
  }
}
