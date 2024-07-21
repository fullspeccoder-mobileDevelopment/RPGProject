import 'package:my_app/items/armor.dart';
import 'package:my_app/items/inventory.dart';
import 'package:my_app/items/key.dart';
import 'package:my_app/items/potion.dart';
import 'package:my_app/items/weapon.dart';
import 'package:test/test.dart';

void main() {
  group("Inventory: Adding Functionality | ", () {
    test("Simple Weapon", () {
      Weapon weapon1 = Weapon(5, "Excaliber", attackStat: 5, durability: 100);
      Inventory inventory = Inventory();

      inventory.addItem(weapon1);
      expect(weapon1, inventory.inventory[0]);
    });

    test("Simple Armor", () {
      Armor armor1 = Armor(5, "Dragonborn", defenseStat: 5, durability: 100);
      Inventory inventory = Inventory();

      inventory.addItem(armor1);
      expect(armor1, inventory.inventory[0]);
    });

    test("Simple Potion", () {
      Potion potion1 = Potion(5, "Healing Elixir", healthStat: 15);
      Inventory inventory = Inventory();

      inventory.addItem(potion1);
      expect(potion1, inventory.inventory[0]);
    });

    test("Simple Key", () {
      Key key1 = Key("Key of Wisdon", doorToUnlock: "Hyperactive Clouds");
      Inventory inventory = Inventory();

      inventory.addItem(key1);
      expect(key1, inventory.inventory[0]);
    });
  });

  group("Inventory: Delete Functionality | ", () {
    test("Simple Weapon", () {
      Weapon weapon1 = Weapon(5, "Excaliber", attackStat: 5, durability: 100);
      Inventory inventory = Inventory();

      inventory.deleteItem(weapon1.name);
      expect(inventory.inventory.length, 0);
    });

    test("Simple Armor", () {
      Armor armor1 = Armor(5, "Dragonborn", defenseStat: 5, durability: 100);
      Inventory inventory = Inventory();

      inventory.deleteItem(armor1.name);
      expect(inventory.inventory.length, 0);
    });

    test("Simple Potion", () {
      Potion potion1 = Potion(5, "Healing Elixir", healthStat: 15);
      Inventory inventory = Inventory();

      inventory.deleteItem(potion1.name);
      expect(inventory.inventory.length, 0);
    });

    test("Simple Key", () {
      Key key1 = Key("Key of Wisdon", doorToUnlock: "Hyperactive Clouds");
      Inventory inventory = Inventory();

      inventory.deleteItem(key1.name);
      expect(inventory.inventory.length, 0);
    });
  });
}
