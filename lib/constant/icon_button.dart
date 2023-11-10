import 'package:flutter/material.dart';

class IconButtonEdit extends StatelessWidget {
  const IconButtonEdit({
    super.key,
    required this.iconData,
    required this.onTap,
    required this.color,
  });

  final IconData iconData;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      maxRadius: 25,
      child: IconButton(
        onPressed: onTap,
        icon: Icon(iconData),
      ),
    );
  }
}
