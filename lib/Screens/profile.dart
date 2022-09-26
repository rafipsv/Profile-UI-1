// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:profile_ui/widgets/about.dart';
import 'package:profile_ui/widgets/button.dart';
import 'package:profile_ui/widgets/info_row.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/rafi.jpeg',
                        ),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: 140,
                    right: 0,
                    left: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.bottomLeft,
                      height: 35,
                      width: 35,
                      child: Center(
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Muhammad Fazlul Karim",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "cookietheplaybird@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
              MyButton(),
              InfoRow(),
              About(),
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(left: 35, right: 20),
                  child: Text(
                    "I am ambitious and driven. I thrive on challenges and constantly set goals for myself, so I have something to strive toward. I'm not comfortable with settling, and I'm always looking for an opportunity to do better and achieve greatness.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
