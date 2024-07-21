import 'package:my_app/characters/hero.dart';
import 'package:my_app/items/weapon.dart';
import 'package:test/test.dart';

void main() {
  setUp(() => {});

  group("Hero class", () {
    test("Hero adds Item to inventory", () {
      Weapon weapon1 = Weapon(5, "Excaliber", attackStat: 5, durability: 5);
      Hero hero = Hero("Jake");
      hero.inventory.addItem(weapon1);
      expect(weapon1, hero.inventory.selectItem("Excaliber"));
    });

    test("Hero toString method works", () {
      Hero hero = Hero("Jake");
      expect(
          "${"Jake"}\nHealth: ${100}\nMana: ${100}\nAttack: ${5}\nDefense: ${5}\nMagic: ${5}\nEquipped Weapon: ${"None"}",
          hero.toString());
    });
  });
}
