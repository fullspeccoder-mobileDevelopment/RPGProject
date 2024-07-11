abstract class Item {
  Item({required this.name, required this.quantity});

  int quantity;
  final String name;

  void use();
}
