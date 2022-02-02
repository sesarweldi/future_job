import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/pages/detail_page.dart';

import '../theme.dart';


class JobTitle extends StatelessWidget {
  final String imageUrl, jobTitle, companyTitle;

  const JobTitle({required this.imageUrl,required this.companyTitle,required this.jobTitle,Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, width: 45, height: 45,),
          SizedBox(width: 27,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobTitle, style: jobTitleTextStyle,),
                Text(companyTitle, style: companyTitleTextStyle,),
                SizedBox(height: 18,),
                Divider(
                  color: dividerColor,
                  thickness: 1,
                ),
                // SizedBox(height: 17,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
