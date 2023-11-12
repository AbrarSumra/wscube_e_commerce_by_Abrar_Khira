import 'package:flutter/material.dart';

class Specifications extends StatelessWidget {
  const Specifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 350,
          child: Text(
            "It’s not a very common feature, but some charging cases have "
            "extra-large batteries and a built-in USB-A charging port that lets you "
            "recharge a phone or almost any other device. Whether having this option is"
            " worth carrying the extra bulk is a personal decision, but it doesn’t add much "
            "cost to the earbuds, so price likely won’t be a factor.",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
