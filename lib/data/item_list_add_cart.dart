class ItemAddCart {
  ItemAddCart({
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    required this.itemQuantity,
    this.isFavourite = false,
  });

  String itemName;
  String itemPrice;
  int itemQuantity;
  String itemImage;
  bool isFavourite;
}

List<ItemAddCart> itemList = [];
List<FavouriteItem> favouriteItemList = [];

class FavouriteItem {
  FavouriteItem({
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    this.isFavourite = false,
  });

  String itemName;
  String itemPrice;
  String itemImage;
  bool isFavourite;
}
