import 'characters/hero.dart';
import 'characters/villager.dart';

void main() {
  Hero hero = Hero("Jacob");
  Villager villager1 = Villager("Marcus");

  hero.talkTo(villager1);
  print("\nHero:");
  print("Name: ${hero.name}");
  print("Health: ${hero.health}");
  print("Mana: ${hero.mana}");
  print("Equipped Weapon: ${hero.equippedWeapon ?? "No weapon equipped."}");

  print("\nVillager:");
  print("Name: ${villager1.name}");
  print("Health: ${villager1.health}");
  print("Mana: ${villager1.mana}");
  print(
      "Equipped Weapon: ${villager1.equippedWeapon ?? "No weapon equipped."}");
}
