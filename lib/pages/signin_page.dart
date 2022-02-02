import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/widgets/rounded_button.dart';
import 'package:jobs_app/widgets/text_form_field.dart';

import '../theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


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
                "Sign In",
                style: titleTextStyle
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Build Your Career",
                style: subTitleTextStyle
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  "assets/images/img_signin.png",
                  height: 262,
                  width: 240,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                text: "Email Address",
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
                borderSideColor: isEmailValid? primaryColor: redColor,
                textStyle: TextStyle(color: isEmailValid ? primaryColor : redColor),
              ),
              CustomTextField(
                text: "Password",
                borderSideColor: primaryColor,
              ),
              SizedBox(
                height: 40,
              ),
              RoundedButton(
                  text: "Sign In", textColor: whiteColor, press: () {}),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                      color: greyColor, fontWeight: light, fontSize: 14),
                ),
              ))
            ],
          ),
        ),
      )),
    );
  }
}
