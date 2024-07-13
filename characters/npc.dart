import '../items/armor.dart';
import '../items/item.dart';
import '../items/weapon.dart';
import '../quests/quest.dart';

abstract class NPC {
  NPC(
      {required attackStat,
      required defenseStat,
      required magicStat,
      required name})
      : this._health = 100,
        this._mana = 100,
        this._equippedWeapon = null,
        this._attackStat = attackStat,
        this._defenseStat = defenseStat,
        this._magicStat = magicStat,
        this._name = name;
  int _health;
  int _mana;
  int _attackStat;
  int _defenseStat;
  int _magicStat;
  Weapon? _equippedWeapon;
  final String _name;
  final List<Item> _inventory = [];
  final Map<String, Armor> _equippedArmor = {};
  final List<Quest> _quests = [];

  String get name => this._name;
  int get health => this._health;
  int get mana => this._mana;
  int get attackStat => this._attackStat;
  int get defenseStat => this._defenseStat;
  int get magicStat => this._magicStat;
  Weapon? get equippedWeapon => this._equippedWeapon;
  List<Item> get inventory => this._inventory;
  Map<String, Armor> get equippedArmor => this._equippedArmor;
  List<Quest> get quests => this._quests;

  void set health(int amount) => this._health + amount;
  void set mana(int amount) => this._mana + amount;
  void set attackStat(int amount) => this._attackStat + amount;
  void set defenseStat(int amount) => this._defenseStat + amount;
  void set magicStat(int amount) => this._magicStat + amount;
  void set equippedWeapon(Weapon? weapon) {
    if (weapon == null) {
      print("Couldn't equip weapon.");
    } else {
      this._equippedWeapon = weapon;
    }
  }

  Item? giveItem(String itemName) {
    for (final item in this.inventory) {
      if (item.name == itemName) {
        item.quantity -= 1;
        return item;
      }
    }
    return null;
  }

  void recieveItem(Item? item) {
    if (item == null) {
      print("Couldn't recieve item");
    } else {
      print("Recieving ${item.name}");
      this.inventory.add(item);
    }
  }

  void viewInventory() {
    print("\nInventory:");
    for (final item in this.inventory) {
      print("Item: ${item.name}");
      print("Quantity: ${item.quantity}");
    }
  }

  void showQuests() {
    if (this.quests.length == 0) {
      print("I have no quests...");
    } else {
      print("\nQuests:");
      int count = 1;
      this.quests.forEach((quest) {
        print("${count++}: ${quest.name}");
      });
    }
  }
}
