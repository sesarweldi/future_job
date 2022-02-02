import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/rounded_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
              SizedBox(
              height: 50,
            )
            ,
            isApplied ? Container(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "You have applied this job and the \nrecruiter will contact you",
                style: appliedMessageTextStyle,
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: dividerColor, borderRadius: BorderRadius.circular(20)),
            ) : SizedBox()
            ,
            Image.asset(
              "assets/images/ic_google.png",
              width: 60,
              height: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Front-End Developer",
              style: jobApplyTextStyle,
            ),
            Text(
              "Google, Inc • Jakarta",
              style: companyTitleTextStyle,
            )
            ],
          ),
        ),
      ),);
    }

    Widget Body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About the job",
                    style: titleRequirementTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Full-Time On Site",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Full-Time On Site",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Qualifications",
                    style: titleRequirementTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Candidate must possess at least a \nBachelor's Degree.",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Able to use Microsoft Office and Google \nbased service.",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Have an excellent time management, \ngood at organized and details",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About the job",
                    style: titleRequirementTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Initiate and promote any programs, events, \ntraining, or activities.",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/dot.png",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Assessing and anticipating needs and \ncollaborate with Division.",
                        style: requirementTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 51,
              ),
            ],
          ),
        ),
      );
    }

    Widget applyButton() {
      return Column(
        children: [
          RoundedButton2(
              text: "Apply for Job",
              backgroundColor: primaryColor,
              textColor: whiteColor,
              outlineColor: Colors.transparent,
              press: () {
                setState(() {
                  isApplied = !isApplied;
                });
              }),
          SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget cancelApplyButton() {
      return Column(
        children: [
          RoundedButton2(
              text: "Cancel Apply",
              backgroundColor: redColor,
              textColor: whiteColor,
              outlineColor: Colors.transparent,
              press: () {
                setState(() {
                  isApplied = !isApplied;
                });
              }),
          SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget successAppliedMessage() {
      return Container(
        child: Text(
          "You have applied this job and the \nrecruiter will contact you",
          style: appliedMessageTextStyle,
        ),
        decoration: BoxDecoration(
            color: dividerColor, borderRadius: BorderRadius.circular(20)),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Body(),
            isApplied ? cancelApplyButton() : applyButton(),
            InkWell(
                onTap: () {},
                child: Text(
                  "Message Recruiter",
                  style: requirementGreyTextStyle,
                ))
          ],
        ),
      ),
    );
  }
}
