import 'items/item.dart';
import 'items/potion.dart';
import 'items/weapon.dart';
import 'quests/quest.dart';

void main() {
  List<Item> items = [
    Weapon(2, "Excaliber", attackStat: 2, durability: 100),
    Potion(2, "Healing Potion")
  ];

  Quest quest1 = Quest(
      name: "Kill the dragon",
      description: "Quest to go to a dungeon and sever the dragon's head");

  items.forEach((item) => quest1.rewards.add(item));

  print(quest1.toString());
}
