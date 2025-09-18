import 'models/drink.dart'; // عدّلي المسار حسب مكان الملف عندك
import 'models/order.dart';
import 'models/order_manager.dart';
import 'models/report_generator.dart';
import 'models/drinks/tea.dart';
import 'models/drinks/turkish_coffee.dart';
import 'models/drinks/hibiscus.dart';
import 'dart:io';

void main() {
  final orderManager = OrderManager();

  print("Welcome to Smart Ahwa Manager!");
  bool running = true;

  while (running) {
    print("\n1. Add Order");
    print("2. Complete Order");
    print("3. Show Pending Orders");
    print("4. Show Completed Orders");
    print("5. Show Report");
    print("6. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Customer Name: ");
        String customer = stdin.readLineSync() ?? "";

        stdout.write("Drink (Tea / TurkishCoffee / Hibiscus): ");
        String drinkType = stdin.readLineSync() ?? "";

        stdout.write("Special Instructions (optional): ");
        String instructions = stdin.readLineSync() ?? "";

        Drink drink;
        if (drinkType.toLowerCase() == "tea") {
          drink = Tea();
        } else if (drinkType.toLowerCase() == "turkishcoffee") {
          drink = TurkishCoffee();
        } else if (drinkType.toLowerCase() == "hibiscus") {
          drink = Hibiscus();
        } else {
          print("Invalid drink type, defaulting to Tea.");
          drink = Tea();
        }

        orderManager.addOrder(
          Order(
            customerName: customer,
            drink: drink,
            specialInstructions: instructions,
          ),
        );
        print("Order added!");
        break;

      case "2":
        stdout.write("Enter Order ID to complete: ");
        int id = int.parse(stdin.readLineSync() ?? "0");
        orderManager.completeOrderById(id);
        break;

      case "3":
        print("\n=== Pending Orders ===");
        orderManager.getPendingOrders().forEach(print);
        break;

      case "4":
        print("\n=== Completed Orders ===");
        orderManager.getCompletedOrders().forEach(print);
        break;

      case "5":
        var report = ReportGenerator(orderManager.getAllOrders());
        print("\n=== Top Selling Drinks ===");
        report.topSellingDrinks().forEach((drink, count) {
          print('$drink: $count');
        });
        print("Total Orders: ${report.totalOrders()}");
        break;

      case "6":
        running = false;
        break;

      default:
        print("Invalid choice. Try again.");
    }
  }

  print("Goodbye!");
}

