import '../drink.dart';

class Tea implements Drink {
  @override
  String get name => "Shai";

  @override
  double get price => 10.0;

  @override
  String toString() => "$name - $price LE";
}
