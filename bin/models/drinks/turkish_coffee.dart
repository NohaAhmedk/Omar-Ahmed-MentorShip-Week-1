import '../drink.dart';

class TurkishCoffee implements Drink {
  @override
  String get name => "Turkish Coffee";

  @override
  double get price => 15.0;

  @override
  String toString() => "$name - $price LE";
}
