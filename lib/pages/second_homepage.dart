import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/job_title.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imgUrl;

  const SecondHomePage({required this.imgUrl, required this.jobTitleHome});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: ShaderMask(
                    blendMode: BlendMode.darken,
                    child: Image.asset(imgUrl, fit: BoxFit.cover, width: double.infinity, height: 270,),
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                              colors: [gradientColor, Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          .createShader(Rect.fromLTRB(0, 0, 350, 350));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobTitleHome,
                        style: jobTitleDetailTextStyle,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "12,309 Available",
                        style: jobSubTitleDetailTextStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Big Companies",
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Big Companies",
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
          ],
        ),
      ),
    );
  }
}
