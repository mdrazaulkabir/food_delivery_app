import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String text;
  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(fontSize: 24),),
        ListTile(
          title: Text("See All "),
          leading: Icon(Icons.arrow_right,size: 20,),
        )
      ],
    );
  }
}
