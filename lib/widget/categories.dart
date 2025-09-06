import 'package:flutter/material.dart';
class Categories extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool active;

  const Categories({super.key, required this.text, required this.icon, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(10),
        color: active? Colors.orangeAccent: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ]
      ),
      child: Row(
        children: [
          Icon(icon),
          Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
