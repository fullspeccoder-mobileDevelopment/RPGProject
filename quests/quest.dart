import '../characters/hero.dart';
import '../items/item.dart';

class Quest {
  Quest({required this.name, required this.description});
  final String name;
  final String description;
  final List<Item> rewards = [];

  void giveRewards(Hero hero) {
    if (rewards.length != 0) {
      this.rewards.forEach((reward) => hero.inventory.add(reward));
    }
  }

  @override
  String toString() {
    String stringedInfo =
        "${this.name}\nDescription: ${this.description}\nRewards:\n";
    this.rewards.forEach((reward) => stringedInfo += "\n$reward");
    return stringedInfo;
  }
}
