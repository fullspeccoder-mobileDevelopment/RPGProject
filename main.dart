import './items/weapon.dart';
import './items/armor.dart';
import 'items/item.dart';
import 'items/key.dart';
import 'items/potion.dart';

void main() {
  Weapon weapon1 = Weapon(1, "Excaliber", attackStat: 5, durability: 100);

  Armor armor1 = Armor(1, "Dragonborn", defenseStat: 10, durability: 100);

  Potion potion1 = Potion(1, "Healing Elixir", healthStat: 15);

  Key key1 = Key("Key of Righteousness", doorToUnlock: "Forest");

  List<Item> inventory = [weapon1, armor1, potion1, key1];

  inventory.forEach((el) => el.use());
}
