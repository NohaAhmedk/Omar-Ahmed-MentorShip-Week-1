import 'order.dart';

class ReportGenerator {
  final List<Order> orders;

  ReportGenerator(this.orders);

  int totalOrders() => orders.length;

  Map<String, int> topSellingDrinks() {
    Map<String, int> sales = {};
    for (var order in orders) {
      String drinkName = order.drink.name;
      if (sales.containsKey(drinkName)) {
        sales[drinkName] = sales[drinkName]! + 1;
      } else {
        sales[drinkName] = 1;
      }
    }
    return sales;
  }
}
