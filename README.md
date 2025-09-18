# Smart Ahwa Manager (Dart Console App)

## Project Overview
**Smart Ahwa Manager** is a console-based Dart application designed to help a traditional Ahwa (coffee shop) manage customer orders efficiently. The app allows the owner to add orders, mark them as completed, track pending and completed orders, and generate basic sales reports.

---

## Problem Statement
Managing orders in a busy Ahwa can be challenging, especially when trying to keep track of multiple drinks, special instructions, and overall sales. This application solves this problem by providing a simple command-line interface to:

- Add new customer orders
- Complete existing orders
- Track pending and completed orders
- Generate reports showing top-selling drinks and total orders

---

## Architecture / Flow

### Classes Overview

1. **Drink (abstract class)**
    - Represents a drink with a `name` and `price`.
    - Implemented by `Tea`, `TurkishCoffee`, and `Hibiscus`.

2. **Order**
    - Represents a customer's order.
    - Contains: `customerName`, `drink`, `specialInstructions`, and a unique `id`.
    - Can be marked as completed.

3. **OrderManager**
    - Manages a list of all orders.
    - Functions:
        - `addOrder(Order order)`
        - `completeOrderById(int id)`
        - `getPendingOrders()`
        - `getCompletedOrders()`
        - `getAllOrders()`

4. **ReportGenerator**
    - Generates reports based on the orders from `OrderManager`.
    - Functions:
        - `totalOrders()`
        - `topSellingDrinks()`

### Class Relationships

```text
+----------------+       +---------------+
|    OrderManager|<------|     Order     |
+----------------+       +---------------+
        |                        |
        |                        |
        v                        v
+----------------+        +---------------+
|ReportGenerator |        |     Drink     |
+----------------+        +---------------+
                             ^   ^    ^
                             |   |    |
                           Tea Turkish Hibiscus

OrderManager stores multiple Order objects.
Each Order contains one Drink.
ReportGenerator uses orders from OrderManager to produce sales insights.

