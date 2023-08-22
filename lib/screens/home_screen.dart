import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'images/logo.png',
          scale: 6,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble_2)),
          const SizedBox(
            width: 5,
          ),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.person))
        ],
      ),
      body: UserCard(user: User.users[0]),
    );
  }
}

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(user.imageUrls[0]), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.white12,
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(3, 3))
              ],
            )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aditya Kumar",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "20",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.home),
                      SizedBox(width: 5),
                      Text("Lives in Varanasi"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.location_solid),
                      SizedBox(width: 5),
                      Text("74 miles away"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
