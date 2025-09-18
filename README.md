
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



## Screenshots / Console Logs

* Include screenshots of the console showing:

   * Adding orders
   * Pending orders
   * Completed orders
   * Sales report
* Example log:
* Choose an option: 1
Customer Name: noha
Drink (Tea / TurkishCoffee / Hibiscus): tea
Special Instructions (optional): extra sugar
Order added!

Choose an option: 1
Customer Name: omar
Drink (Tea / TurkishCoffee / Hibiscus): TurkishCoffee
Special Instructions (optional): nothing
Order added!

Choose an option: 1
Customer Name: sara
Drink (Tea / TurkishCoffee / Hibiscus): TurkishCoffee
Special Instructions (optional): nothing
Order added!
<img width="608" height="663" alt="Screenshot 2025-09-18 215809" src="https://github.com/user-attachments/assets/5f172d4c-495d-408f-bb11-fd2b236b1393" />



---

### 2️⃣ Viewing Pending Orders


Choose an option: 3

=== Pending Orders ===
Order #1 | Customer: noha | Drink: Shai - 10.0 LE | Notes: extra sugar | Status: Pending
Order #2 | Customer: omar | Drink: Turkish Coffee - 15.0 LE | Notes: nothing | Status: Pending
Order #3 | Customer: sara | Drink: Turkish Coffee - 15.0 LE | Notes: nothing | Status: Pending
<img width="987" height="347" alt="Screenshot 2025-09-18 215855" src="https://github.com/user-attachments/assets/5bdd55d1-8d67-4ff3-a92b-5b0f4f688c36" />


---

### 3️⃣ Completing an Order


Choose an option: 2
Enter Order ID to complete: 3
Order #3 marked as completed!

Choose an option: 4

=== Completed Orders ===
Order #3 | Customer: sara | Drink: Turkish Coffee - 15.0 LE | Notes: nothing | Status: Completed



---

### 4️⃣ Viewing Pending Orders After Completion


Choose an option: 3

=== Pending Orders ===
Order #1 | Customer: noha | Drink: Shai - 10.0 LE | Notes: extra sugar | Status: Pending
Order #2 | Customer: omar | Drink: Turkish Coffee - 15.0 LE | Notes: nothing | Status: Pending
<img width="970" height="603" alt="Screenshot 2025-09-18 215943" src="https://github.com/user-attachments/assets/c3c3f59d-24b0-4887-a896-d980bd5af938" />

---

### 5️⃣ Viewing Report


Choose an option: 5

=== Top Selling Drinks ===
Shai: 1
Turkish Coffee: 2
Total Orders: 3
  <img width="990" height="652" alt="Screenshot 2025-09-18 220049" src="https://github.com/user-attachments/assets/7d9893c2-2b12-4712-b178-e14657d3ab55" />


```


---
