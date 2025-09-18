import 'order.dart';

class OrderManager {
  final List<Order> _orders = [];

  void addOrder(Order order) {
    _orders.add(order);
  }

  void completeOrderById(int id) {
    for (var order in _orders) {
      if (order.id == id) {
        order.markCompleted();
        print('Order #$id marked as completed!');
        return;
      }
    }
    print('Order #$id not found.');
  }

  List<Order> getPendingOrders() {
    List<Order> pending = [];
    for (var order in _orders) {
      if (!order.isCompleted) {
        pending.add(order);
      }
    }
    return pending;
  }

  List<Order> getCompletedOrders() {
    List<Order> completed = [];
    for (var order in _orders) {
      if (order.isCompleted) {
        completed.add(order);
      }
    }
    return completed;
  }

  List<Order> getAllOrders() => List.unmodifiable(_orders);
}
