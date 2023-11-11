import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wscube_e_commerce/constant/icon_button.dart';
import 'package:wscube_e_commerce/screens/item_list_add_cart.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 340,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                IconButtonEdit(
                                  color: Colors.white,
                                  iconData: CupertinoIcons.back,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                const Spacer(),
                                IconButtonEdit(
                                  color: Colors.white,
                                  iconData: Icons.share_outlined,
                                  onTap: () {},
                                ),
                                const SizedBox(width: 15),
                                IconButtonEdit(
                                  color: Colors.white,
                                  iconData: isFavourite
                                      ? CupertinoIcons.heart_fill
                                      : CupertinoIcons.heart,
                                  onTap: () {
                                    setState(() {
                                      isFavourite = !isFavourite;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Positioned(
                              left: 50,
                              top: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  widget.image,
                                  fit: BoxFit.fill,
                                  height: 250,
                                  width: 250,
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
                                                style: TextStyle(
                                                    color: Colors.grey),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          CupertinoIcons.minus,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Icon(
                          CupertinoIcons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      final addInCart = ItemAddCart(
                        itemImage: widget.image,
                        itemName: widget.name,
                        itemPrice: widget.price,
                        //itemPrice: ,
                      );
                      itemList.add(addInCart);
                      setState(() {});
                    },
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade800,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
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
