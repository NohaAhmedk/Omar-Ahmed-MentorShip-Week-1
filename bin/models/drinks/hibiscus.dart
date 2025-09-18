import '../drink.dart';

class Hibiscus implements Drink {
  @override
  String get name => "Hibiscus Tea";

  @override
  double get price => 12.0;

  @override
  String toString() => "$name - $price LE";
}
