import 'package:flutter/material.dart';
class RestaurantCard extends StatelessWidget {
  final String? imagePic;
  final String text;
  final String subText;
  final double rating;
  final String textOp;
  final String time;

  const RestaurantCard({
    super.key,
    this.imagePic,
    required this.text,
    this.subText = "Burger- Chicken- Rice",
    required this.rating,
    this.textOp = "Free",
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child: imagePic==null? Center(child: Text("not selected image"),) : Image.asset(imagePic!,fit:BoxFit.fitWidth,),
        ),
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 6,),
        Text(subText,style:TextStyle(color: Colors.grey),),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Icon(Icons.star_rate_outlined,color: Colors.orangeAccent,),
            Text(" $rating"),
            SizedBox(width: 13,),

            Icon(Icons.directions_bus_sharp,color: Colors.orangeAccent,),
            Text(" $textOp"),
            SizedBox(width: 13,),

            Icon(Icons.access_time,color: Colors.orangeAccent,),
            Text(" $time"),
            SizedBox(width: 13,),

        ],)
      ],
    );
  }
}
