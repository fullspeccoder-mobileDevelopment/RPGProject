import 'item.dart';

class Potion extends Item {
  Potion(int quantity, String name, {this.healthStat, this.manaStat})
      : super(quantity: quantity, name: name);

  final int? healthStat;
  final int? manaStat;
}
