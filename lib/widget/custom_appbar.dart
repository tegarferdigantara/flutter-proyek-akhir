import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),),
      leading: Stack(
        children: [
        Positioned.fill(
          child: Image.asset('assets/img/logo.png')),
      ]),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.black,))],
    );
  }
}


