import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wscube_e_commerce/constant/icon_button.dart';
import 'package:wscube_e_commerce/data/items_data.dart';
import 'package:wscube_e_commerce/screens/cart_screen.dart';
import 'package:wscube_e_commerce/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButtonEdit(
                        color: Colors.grey.shade200,
                        iconData: CupertinoIcons.square_grid_2x2,
                        onTap: () {},
                      ),
                      const Spacer(),
                      IconButtonEdit(
                        color: Colors.grey.shade200,
                        iconData: CupertinoIcons.bell,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.search),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              label: Text("Search"),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_alt_outlined),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/shoes.jpeg",
                      fit: BoxFit.fitWidth,
                      height: 180,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemData.length,
                itemBuilder: (ctx, index) {
                  return Row(
                    children: [
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundImage:
                                AssetImage(itemData[index]["image"]),
                          ),
                          SizedBox(
                            width: 60,
                            child: Text(
                              itemData[index]["title"],
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Special for You",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8 / 8.3,
              ),
              itemBuilder: (ctx, index) {
                String name = itemPng[index]["name"];
                String image = itemPng[index]["image"];
                String price = itemPng[index]["price"];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => ProductDetailsScreen(
                                  name: name,
                                  image: image,
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: Container(
                      height: 220,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(18),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: SizedBox(
                              height: 115,
                              width: 150,
                              child: Image(
                                image: AssetImage(itemPng[index]["image"]),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 135,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    itemPng[index]["name"],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 155,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    price,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 8,
                                  ),
                                  const SizedBox(width: 5),
                                  const CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 8,
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "+2",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        backgroundColor: Colors.orange.shade800,
        child: Image.asset(
          "assets/pngs/house.png",
          color: Colors.white,
          width: 25,
          height: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                "assets/pngs/widget.png",
                color: Colors.grey,
                width: 25,
                height: 25,
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.heart,
                  color: Colors.grey,
                  size: 25,
                ),
                onPressed: () {},
              ),
              // Add an empty container to create space for the centered button
              const SizedBox(width: 48.0),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const CartScreen()));
                },
                child: Image.asset(
                  "assets/pngs/trolley.png",
                  color: Colors.grey,
                  width: 25,
                  height: 25,
                ),
              ),
              Image.asset(
                "assets/pngs/user.png",
                color: Colors.grey,
                width: 25,
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
