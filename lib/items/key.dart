import 'item.dart';

class Key extends Item {
  Key(String name, {required this.doorToUnlock})
      : super(quantity: 1, name: name);

  final String doorToUnlock;

  @override
  String toString() {
    return "${this.name}\nFor: ${this.doorToUnlock}";
  }
}
