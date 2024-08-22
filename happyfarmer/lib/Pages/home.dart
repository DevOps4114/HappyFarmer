// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:happyfarmer/Utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 68, left: 20, right: 10),
            child: Container(
              // color: main_green,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/Photo/leaf.png",
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Yuvraj",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "enjoy your service",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 180,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          right: 10,
                          left: 10,
                          top: 10,
                          bottom: 10), // this is use for the notification size
                      decoration: BoxDecoration(
                          color: main_green,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(
                        Icons.notifications_active,
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

// Search Bar
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Container(
                  //  this is for the flitter size and space from the around
                  padding: EdgeInsets.all(15),

                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    color: main_green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
