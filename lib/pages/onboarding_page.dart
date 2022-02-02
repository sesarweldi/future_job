import 'package:flutter/material.dart';
import 'package:jobs_app/pages/signin_page.dart';
import 'package:jobs_app/pages/signup_page.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/rounded_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Build Your Next\nFuture Career Like a Master",
                    style: TextStyle(
                        fontSize: 32, fontWeight: regular, color: whiteColor)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "18,000 jobs available",
                  style: TextStyle(
                      color: whiteColor, fontWeight: light, fontSize: 16),
                ),
                SizedBox(
                  height: size.height * 0.5,
                ),
                Center(
                    child: RoundedButton2(
                  backgroundColor: whiteColor,
                  text: "Get Started",
                  textColor: primaryColor,
                  outlineColor: Colors.transparent,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                )),
                SizedBox(
                  height: 12,
                ),
                Center(
                    child: RoundedButton2(
                  backgroundColor: Colors.transparent,
                  text: "Sign In",
                  textColor: whiteColor,
                  outlineColor: whiteColor,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
