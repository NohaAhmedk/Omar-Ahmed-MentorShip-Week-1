import 'drink.dart';

class Order {
  static int _idCounter = 0;
  final int id;
  final String customerName;
  final Drink drink;
  final String specialInstructions;
  bool isCompleted = false;

  Order({
    required this.customerName,
    required this.drink,
    this.specialInstructions = "",
  }) : id = ++_idCounter;

  void markCompleted() {
    isCompleted = true;
  }

  @override
  String toString() {
    final status = isCompleted ? "Completed" : "Pending";
    final instructions =
    specialInstructions.isNotEmpty ? " | Notes: $specialInstructions" : "";
    return "Order #$id | Customer: $customerName | Drink: $drink$instructions | Status: $status";
  }
}
