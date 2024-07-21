import 'item.dart';

class Inventory {
  Inventory();
  final List<Item> inventory = [];

  void addItem(Item item) {
    if (_inInventory(item.name)) {
      this
          .inventory
          .firstWhere((currItem) => currItem.name == item.name)
          .quantity += 1;
    } else {
      this.inventory.add(item);
    }
  }

  void deleteItem(String itemName) {
    if (_inInventory(itemName)) {
      this
          .inventory
          .firstWhere((currItem) => currItem.name == itemName)
          .quantity -= 1;
      this.inventory.removeWhere(
          (currItem) => (currItem.name == itemName && currItem.quantity <= 0));
    } else {
      print("Item not found");
    }
  }

  Item? selectItem(String itemName) {
    if (_inInventory(itemName)) {
      return this.inventory.firstWhere((currItem) => currItem.name == itemName);
    } else {
      return null;
    }
  }

  bool _inInventory(String itemName) {
    bool hasFoundItem = false;
    this.inventory.forEach(
        (currItem) => currItem.name == itemName ? hasFoundItem = true : false);
    return hasFoundItem;
  }

  @override
  String toString() {
    String readableString = "\nInventory:\n\n";
    inventory.forEach(
        (item) => readableString += "${item.name}\nQuantity:${item.quantity}");
    return readableString;
  }
}
