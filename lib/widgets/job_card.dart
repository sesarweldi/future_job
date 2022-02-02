import 'package:flutter/material.dart';
import 'package:jobs_app/pages/second_homepage.dart';

import '../theme.dart';


class JobCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const JobCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondHomePage(imgUrl: imageUrl, jobTitleHome: title,),));
      },
      child: Container(
        width: 150,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(left: 18, bottom: 16, right: 15),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: titleHotCategoriesTextStyle,
            ),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageUrl)
            )
        ),
      ),
    );
  }
}
