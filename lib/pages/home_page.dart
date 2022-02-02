import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jobs_app/widgets/job_card.dart';
import 'package:jobs_app/widgets/job_title.dart';

import '../theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Howdy",
                      style: titleTextStyle,
                    ),
                    Text(
                      "Jason Powel",
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/user_pic.png",
                  width: 58,
                  height: 58,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget Body() {
      return Container(
        child: Padding(
          padding: EdgeInsets.only(left: 24, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hot Categories",
                style: blackTitleTextStyle,
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                        title: "Web Developer",
                        imageUrl: "assets/images/web_carousel.png"),
                    SizedBox(width: 16),
                    JobCard(
                        title: "Mobile Developer",
                        imageUrl: "assets/images/mobiledev_carousel.png"),
                    SizedBox(width: 16),
                    JobCard(
                        title: "App Designer",
                        imageUrl: "assets/images/appdesigner_carousel.png"),
                    SizedBox(width: 16),
                    JobCard(
                        title: "Content Writer",
                        imageUrl: "assets/images/contentwriter_carousel.png"),
                    SizedBox(width: 16),
                    JobCard(
                        title: "Video Grapher",
                        imageUrl: "assets/images/vidgraph_carousel.png"),
                    SizedBox(width: 16),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Just Posted",
                style: blackTitleTextStyle,
              ),
              SizedBox(
                height: 16,
              ),
              JobTitle(
                  imageUrl: "assets/images/ic_google.png",
                  companyTitle: "Google",
                  jobTitle: "Front-End Developer"),
              JobTitle(
                  imageUrl: "assets/images/ic_ig.png",
                  companyTitle: "Instagram",
                  jobTitle: "UI Designer"),
              JobTitle(
                  imageUrl: "assets/images/ic_fb.png",
                  companyTitle: "Facebook",
                  jobTitle: "Data Scientist"),
            ],
          ),
        ),
      );
    }

    Widget BottomNavBar() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: greyColor,
        selectedItemColor: blackColor,
        elevation: 0,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/navbar_one.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/navbar_two.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/navbar_three.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/navbar_four.png',
              width: 24,
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [Header(), Body()],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
