import 'package:flutter/material.dart';
import 'package:food_delivery_app/image_link/image_path.dart';
import 'package:food_delivery_app/widget/categories.dart';
import 'package:food_delivery_app/widget/header.dart';
import 'package:food_delivery_app/widget/restaurant_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: [
            SizedBox(height: 16,),
            //row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  // Icon(Icons.menu,size: 20,),
                  CircleAvatar(radius: 10,backgroundColor: Colors.grey,child: Icon(Icons.menu),),
                  Column(
                    children: [
                      Text("DELIVERY TO",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Halal Lab office",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                    ],
                  )
                ],),
                Stack(
                  alignment: AlignmentGeometry.topLeft,
                  children: [
                    CircleAvatar(radius: 10,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.menu),),
                    Positioned(child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.menu),),
                    )
                  ],

                )
              ],
            ),
            SizedBox(height: 16,),
            RichText(text: TextSpan(text: "Hey Halal, ", children: [
              TextSpan(text: "Good Afternoon!",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ]),),
            SizedBox(height: 16,),
            Row(children: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              Text("Search dishes, restaurants",style: TextStyle(color: Colors.grey),)
            ],),
            SizedBox(height: 16,),
            Header(text: "All Categories"),
            SizedBox(height: 60,
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Categories(text: "All", icon: Icons.local_fire_department_outlined,active: true,),
                Categories(text: "Hot dog", icon: Icons.fastfood),
                Categories(text: "Pizza", icon: Icons.local_pizza_outlined),
                Categories(text: "Burger", icon: Icons.lunch_dining),
                Categories(text: "Fast Food", icon: Icons.fastfood_outlined),
                Categories(text: "Cake", icon: Icons.cake),
              ],
            ),),
            SizedBox(height: 16,),
            Header(text: "Open Restaurants"),
            SizedBox(
              height: 150,
                child: ListView(
                 scrollDirection:Axis.vertical,
                    children: [
                     RestaurantCard(imagePic: ImagePath.image1,text: "Rose Garden Restaurant", rating: 4.7, time: "20 min") ,
                      RestaurantCard(text: "Green Garden Restaurant", rating: 4.0, time: "23 min"),
                      RestaurantCard(text: "Blue Garden Restaurant", rating: 3.7, time: "28 min"),
                      RestaurantCard(text: "White Garden Restaurant", rating: 2.7, time: "10 min"),
                      RestaurantCard(text: "Rose Garden Restaurant", rating: 3.0, time: "20 min"),
                    ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
