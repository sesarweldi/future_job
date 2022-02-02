import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/pages/home_page.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/rounded_button.dart';
import 'package:jobs_app/widgets/text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isUploaded = false;
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/upload_pic.png",
                height: 120,
                width: 120,
              ),
            ],
          ),
        ),
      );
    }

    ;
    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/user_pic.png",
                height: 120,
                width: 120,
              ),
            ],
          ),
        ),
      );
    }

    ;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.height * 0.03,
                top: size.width * 0.1,
                right: size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: titleTextStyle
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Begin New Journey",
                  style: subTitleTextStyle
                ),
                SizedBox(
                  height: 50,
                ),
                isUploaded ? showedImages() : uploadedImages(),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  text: "Full Name",
                  borderSideColor: primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  text: "Email Address",
                  borderSideColor: isEmailValid ? primaryColor : redColor,
                  textStyle:
                      TextStyle(color: isEmailValid ? primaryColor : redColor),
                  controllerTextField: emailController,
                  onChanged: (value) {
                    print(value);
                    bool isValid = EmailValidator.validate(value);
                    print(isValid);
                    if (isValid) {
                      setState(() {
                        isEmailValid = true;
                      });
                    } else {
                      setState(() {
                        isEmailValid = false;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  text: "Password",
                  borderSideColor: primaryColor,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  text: "Your Goal",
                  borderSideColor: primaryColor,
                ),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(
                    press: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, textColor: whiteColor, text: "Sign Up"),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    "Back to Sign In",
                    style: TextStyle(
                        color: greyColor, fontWeight: light, fontSize: 14),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
