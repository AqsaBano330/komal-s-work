
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:komalswork/Login/login.dart';
import 'package:komalswork/widgets/custom_button.dart';
import 'package:komalswork/widgets/custom_colors.dart';
import 'package:komalswork/widgets/custom_text.dart';
import 'package:komalswork/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  @override
  Widget build(BuildContext context) {

  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController conpasscontroller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
                  child: CustomText(
                    text: "Sign Up",
                    textColor: AppColors.themecolor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: CustomTextField(
                    controller: firstnamecontroller,
                    obscuretext: false,
                    label: "First Name",
                    hinttext: "Enter Your First Name",
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: CustomTextField(
                    controller: lastnamecontroller,
                    obscuretext: false,
                    label: "Last Name",
                    hinttext: "Enter Your Last Name",
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: CustomTextField(
                    controller: emailcontroller,
                    obscuretext: false,
                    label: "Email",
                    hinttext: "Enter Your Email",
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: CustomTextField(
                    controller: passcontroller,
                    obscuretext: true,
                    label: "Password",
                    hinttext: "Enter Your Password",
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: CustomTextField(
                    controller: conpasscontroller,
                    obscuretext: true,
                    label: "Confirm Password",
                    hinttext: "Confirm Password",
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
                        fontWeight: FontWeight.w400,
                      ),
                      IconButton(
                        onPressed: () {
                          
                        },
                        icon: const FaIcon(FontAwesomeIcons.google),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  buttontext: "SignUp",
                  onpressed: () {
                    
                  },
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: "Already have an account?  ",
                        textColor: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: CustomText(
                          text: "Signin",
                          textColor: AppColors.themecolor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

