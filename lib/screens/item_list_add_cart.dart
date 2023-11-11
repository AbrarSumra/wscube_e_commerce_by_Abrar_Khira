class ItemAddCart {
  ItemAddCart({
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

List<ItemAddCart> itemList = [];
List<ItemAddCart> favouriteItemList = [];
