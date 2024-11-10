void main() {
  displayItems();
  addItem('Rice', quantity: 5);
  addItem('Cheese');
  addItem('Oranges', quantity: 3);
  addItem('Pasta', quantity: 4);
  displayItems();

  print("***********");
  removeItem('potato');
  displayItems();

  removeItem('Cheese');
  displayItems();
}

List<String> groceryList = [];

void addItem(String item, {int quantity = 1}) {
  String itemEntry = '$item (Quantity: $quantity)';
  groceryList.add(itemEntry);
  print('Added: $itemEntry');
}

bool removeItem(String item) {
  for (var foundItem in groceryList) {
    if (foundItem.contains(item)) {
      groceryList.remove(foundItem);
      print('Removed: $foundItem');
      return true;
    }
  }
  print('Item "$item" not found in the list.');
  return false;
}

void displayItems() {
  if (groceryList.isEmpty) {
    print("The grocery list is empty.");
  } else {
    print("Grocery List: ");
    for (var item in groceryList) {
      print('* $item');
    }
  }
}
