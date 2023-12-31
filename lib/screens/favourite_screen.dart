import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/item_list_add_cart.dart';

class FavouriteItemScreen extends StatefulWidget {
  const FavouriteItemScreen({super.key});

  @override
  State<FavouriteItemScreen> createState() => _FavouriteItemScreenState();
}

class _FavouriteItemScreenState extends State<FavouriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        foregroundColor: Colors.grey.shade200,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: CircleAvatar(
              maxRadius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(width: 80),
          const Text(
            "My Favourite",
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            ListView.builder(
              itemCount: favouriteItemList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                final items = favouriteItemList[index];
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    height: 115,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              items.itemImage,
                              fit: BoxFit.contain,
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        const SizedBox(width: 11),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 190,
                                    child: Text(
                                      items.itemName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      itemList.remove(items);
                                      setState(() {});
                                    },
                                    child: Icon(
                                      CupertinoIcons.delete,
                                      color: Colors.orange.shade800,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Women Fashion",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 250,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      items.itemPrice,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  /*Container(
                                    height: 25,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius:
                                      BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (itemCount[index] > 0) {
                                                itemCount[index]--;
                                              }
                                            });
                                          },
                                          child: const Icon(
                                            CupertinoIcons.minus,
                                            size: 15,
                                          ),
                                        ),
                                        Text(
                                          itemCount[index].toString(),
                                          style:
                                          const TextStyle(fontSize: 15),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              itemCount[index]++;
                                              */ /*for (int i = 0;
                                                      i < itemCount.length;
                                                      i++) {
                                                    totalPrice += itemCount[i] *
                                                        itemPng[index]["price"];
                                                  }*/ /*
                                            });
                                          },
                                          child: const Icon(
                                            CupertinoIcons.add,
                                            size: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),*/
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
