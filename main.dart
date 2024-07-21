import 'lib/characters/hero.dart';
import 'lib/items/weapon.dart';

void main() {
  Hero hero = Hero("Jake");

  hero.inventory
      .addItem(Weapon(5, "Excaliber", attackStat: 5, durability: 100));

  print(hero.inventory);
}
