import '../items/armor.dart';
import '../items/weapon.dart';

abstract class NPC {
  NPC(
      {required attackStat,
      required defenseStat,
      required magicStat,
      required name})
      : _health = 100,
        _mana = 100,
        _equippedWeapon = null,
        _attackStat = attackStat,
        _defenseStat = defenseStat,
        _magicStat = magicStat,
        _name = name;
  int _health;
  int _mana;
  int _attackStat;
  int _defenseStat;
  int _magicStat;
  Weapon? _equippedWeapon;
  final String _name;
  final Map<String, Armor> _equippedArmor = {};

  String get name => _name;
  int get health => _health;
  int get mana => _mana;
  int get attackStat => _attackStat;
  int get defenseStat => _defenseStat;
  int get magicStat => _magicStat;
  Weapon? get equippedWeapon => _equippedWeapon;
  Map<String, Armor> get equippedArmor => _equippedArmor;

  set health(int amount) => _health + amount;
  set mana(int amount) => _mana + amount;
  set attackStat(int amount) => _attackStat + amount;
  set defenseStat(int amount) => _defenseStat + amount;
  set magicStat(int amount) => _magicStat + amount;
  set equippedWeapon(Weapon? weapon) {
    if (weapon == null) {
      print("Couldn't equip weapon.");
    } else {
      _equippedWeapon = weapon;
    }
  }
}
