

import 'package:flutter/material.dart';
import 'package:komalswork/Signup/sign_up.dart';
import 'package:komalswork/home_screen.dart';
import 'package:komalswork/widgets/custom_button.dart';
import 'package:komalswork/widgets/custom_colors.dart';
import 'package:komalswork/widgets/custom_text.dart';
import 'package:komalswork/widgets/custom_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return SafeArea(
        child: Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: CustomText(
                  text: "Sign In",
                  textColor: AppColors.themecolor,
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomTextField(
                controller: emailcontroller,
                obscuretext: false,
                label: "Email",
                hinttext: " Enter Your Email"),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomTextField(
                controller: passwordcontroller,
                obscuretext: true,
                label: "Password",
                hinttext: " Enter Your Password"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const ForgetPass()),
                // );
              },
              child: CustomText(
                  text: "Forget Password?        ",
                  textColor: AppColors.themecolor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                    text: "SignIn with",
                    textColor: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                IconButton(
                    onPressed: () {
                      
                    },
                    icon: const FaIcon(FontAwesomeIcons.google))
              ],
            ),
          ),
          CustomButton(
            buttontext: "SignIn",
            onpressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const HomeScreen()),
                      );
            },
          ),
          
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                    text: "Didnt have an account?  ",
                    textColor: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    );
                  },
                  child: CustomText(
                      text: "SignUp",
                      textColor: AppColors.themecolor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ]),
      )),
    ));
  }
}
