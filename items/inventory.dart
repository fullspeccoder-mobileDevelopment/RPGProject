import 'item.dart';

class Inventory {
  Inventory();
  final List<Item> inventory = [];

  // TODO: Implement this while checking if item is already in inventory
  void addItem(Item item) {
    inventory.add(item);
  }

  // TODO: Implement this while checking if item is in inventory and handle if not
  void deleteItem(String itemName) {
    print(inventory.where((item) => item.name == itemName));
  }

  // TODO: Implement this while checking if item is in inventory and handle if not - also figure out how to update the item
  void updateItem(String itemName) {
    inventory.where((item) => item.name == itemName).first.quantity += 1;
  }

  @override
  String toString() {
    String readableString = "\nInventory:\n\n";
    inventory.forEach(
        (item) => readableString += "${item.name}\nQuantity:${item.quantity}");
    return readableString;
  }
}
