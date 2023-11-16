import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:wscube_e_commerce/data/item_list_add_cart.dart';
import 'package:wscube_e_commerce/tabs/description.dart';
import 'package:wscube_e_commerce/tabs/reviews.dart';
import 'package:wscube_e_commerce/tabs/specifications.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.tag,
  });

  final String image;
  final String name;
  final String price;
  final String tag;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  bool isFavourite = false;
  int selectedTab = 0;
  int itemCount = 1;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: CircleAvatar(
              maxRadius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_outlined,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: CircleAvatar(
              maxRadius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: isFavourite
                    ? const Icon(CupertinoIcons.heart_fill)
                    : const Icon(CupertinoIcons.heart),
                onPressed: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Hero(
                              tag: widget.tag.toString(),
                              child: Image.asset(
                                widget.image,
                                fit: BoxFit.fill,
                                height: 250,
                                width: 250,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.name,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.price,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.orange.shade800,
                                            ),
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                                Text(
                                                  "4.8",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "(320 Review)",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 73),
                                  const Row(
                                    children: [
                                      Text(
                                        "Seller:",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        " Tariqul islam",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Color",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 31,
                            width: 31,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red.shade900,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 31,
                            width: 31,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 31,
                            width: 31,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.indigoAccent,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 31,
                            width: 31,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.brown.shade800,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 31,
                            width: 31,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 45,
                        child: TabBar(
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorPadding: const EdgeInsets.all(3),
                          indicator: BoxDecoration(
                            color: Colors.orange.shade800,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          tabs: const [
                            Tab(text: "Description"),
                            Tab(text: "Specifications"),
                            Tab(text: "Reviews"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: const [
                            Description(),
                            Specifications(),
                            Reviews(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              height: 65,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (itemCount > 1) {
                                itemCount--;
                              }
                            });
                          },
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          itemCount.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              itemCount++;
                            });
                          },
                          child: const Icon(
                            CupertinoIcons.add,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final addInCart = ItemAddCart(
                          itemImage: widget.image,
                          itemName: widget.name,
                          itemPrice: widget.price,
                          itemQuantity: itemCount,
                          //itemPrice: ,
                        );
                        itemList.add(addInCart);
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade800,
                      ),
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
