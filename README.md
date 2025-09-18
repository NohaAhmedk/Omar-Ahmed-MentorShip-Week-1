
---

# Smart Ahwa Manager (Dart Console App)

## Project Overview

**Smart Ahwa Manager** is a console-based Dart application designed to help a traditional coffee shop (Ahwa) manage customer orders efficiently. The app allows the owner to add orders, mark them as completed, track pending and completed orders, and generate basic sales reports.

This project demonstrates object-oriented programming in Dart and provides a simple and interactive console interface to manage an Ahwa's daily operations.

---

## Problem Statement

Managing orders in a busy Ahwa can be challenging, especially when trying to keep track of multiple customers and different drink types. Traditional pen-and-paper methods can be slow and error-prone. This app solves this problem by providing a simple digital solution for:

* Adding new orders with customer details and special instructions.
* Marking orders as completed.
* Tracking pending and completed orders.
* Generating sales reports to identify top-selling drinks.

---

## Project Architecture

The project follows a basic **object-oriented architecture** with clear responsibilities for each class:

### Classes and Relationships:

1. **Drink (Abstract Class)**

   * Defines the blueprint for any drink.
   * Properties: `name`, `price`.
   * Subclasses: `Tea`, `TurkishCoffee`, `Hibiscus`.

2. **Order**

   * Represents a single customer order.
   * Properties: `id`, `customerName`, `drink`, `specialInstructions`, `isCompleted`.
   * Methods: `markCompleted()`.

3. **OrderManager**

   * Manages all orders.
   * Methods:

      * `addOrder(Order order)`: Add a new order.
      * `completeOrderById(int id)`: Mark order as completed.
      * `getPendingOrders()`: Retrieve pending orders.
      * `getCompletedOrders()`: Retrieve completed orders.
      * `getAllOrders()`: Retrieve all orders.

4. **ReportGenerator**

   * Generates simple sales reports.
   * Methods:

      * `totalOrders()`: Returns total orders.
      * `topSellingDrinks()`: Returns a map of drink names to count of orders.

**Class Diagram (simplified)**

```
       +----------------+
       |    Drink       |
       +----------------+
       | + name         |
       | + price        |
       +----------------+
          ^      ^      ^
          |      |      |
+---------+  +-----------+  +-----------+
|   Tea   |  |TurkishCoffee| | Hibiscus |
+---------+  +-----------+  +-----------+

       +----------------+
       |    Order       |
       +----------------+
       | + id           |
       | + customerName |
       | + drink        |
       | + isCompleted  |
       +----------------+
       | + markCompleted() |
       +----------------+
               |
               v
       +----------------+
       | OrderManager   |
       +----------------+
       | - _orders      |
       +----------------+
       | + addOrder()   |
       | + completeOrderById() |
       | + getPendingOrders()  |
       | + getCompletedOrders()|
       | + getAllOrders()      |
       +----------------+
               |
               v
       +----------------+
       | ReportGenerator|
       +----------------+
       | - orders       |
       +----------------+
       | + totalOrders()|
       | + topSellingDrinks() |
       +----------------+
```

---

## How the Project Works

* The app provides a simple text-based menu:

   1. Add Order
   2. Complete Order
   3. Show Pending Orders
   4. Show Completed Orders
   5. Show Report
   6. Exit
* Users can interact via the console to manage orders in real-time.
* Orders are automatically assigned unique IDs.
* The report section shows total orders and top-selling drinks.

---

## Example Output

```
Welcome to Smart Ahwa Manager!

1. Add Order
2. Complete Order
3. Show Pending Orders
4. Show Completed Orders
5. Show Report
6. Exit
Choose an option: 1
Customer Name: Ahmed
Drink (Tea / TurkishCoffee / Hibiscus): Tea
Special Instructions (optional): Extra sugar
Order added!

=== Pending Orders ===
Order #1 | Customer: Ahmed | Drink: Shai - 10.0 LE | Notes: Extra sugar | Status: Pending
```

---

## How to Run

1. Make sure you have **Dart SDK** installed: [https://dart.dev/get-dart](https://dart.dev/get-dart)
2. Clone the repository:

   ```bash
   git clone <YOUR_REPO_LINK>
   cd smart-ahwa-manager
   ```
3. Run the project:

   ```bash
   dart run bin/main.dart
   ```
4. Follow the on-screen menu to add orders, complete orders, or generate reports.

---

## Screenshots / Console Logs

* Include screenshots of the console showing:

   * Adding orders
   * Pending orders
   * Completed orders
   * Sales report
* Example log:

```
Order #1 | Customer: Ahmed | Drink: Shai - 10.0 LE | Notes: Extra sugar | Status: Pending
Order #2 | Customer: Mona  | Drink: Hibiscus Tea - 12.0 LE | Status: Pending
```

---

## Repository Link

Make sure to include your GitHub repository link in the PDF submission:
**\[GitHub Repo Link Here]**

---
