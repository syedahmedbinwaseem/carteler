import 'package:carteler/screens/home_screens/bottom_navigator.dart';
import 'package:carteler/screens/home_screens/home_screen.dart';
import 'package:carteler/screens/login_and_signup/forgot_password.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey fkey = GlobalKey<FormState>();
  late int emailValidate;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.3,
                      width: width,
                      color: Colors.white,
                    ),
                    Utilities.logoContainer(height, width),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  child: Form(
                    key: fkey,
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              color: const Color(0xff5D8ED1),
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (validateEmail(input!) != 0) {
                              return "Invalid Email!";
                            }
                            return null;
                          },
                              width,
                              'Username or Email',
                              email,
                              const Icon(Icons.email),
                              false,
                              TextInputAction.next,
                              TextCapitalization.none,
                              TextInputType.emailAddress),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (input!.length < 8) {
                              return "Password length less than 8";
                            }
                            return null;
                          },
                              width,
                              'Password',
                              email,
                              const Icon(Icons.visibility),
                              true,
                              TextInputAction.done,
                              TextCapitalization.none,
                              TextInputType.text),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassword()));
                              },
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Utilities.button(height, width, "Login", () {
                            FormState? fs = fkey.currentState as FormState?;
                            if (fs!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavigator(
                                            bookmarked: false,
                                          )));
                            }
                          }, Colors.white, const Color(0xff5D8ED1)),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Or login with',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 30),
                        Utilities.loginOptions(height, width),
                        const SizedBox(height: 30),
                      ],
                    ),
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

int validateEmail(String value) {
  if (value.isEmpty) return 2;

  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regex = RegExp(pattern);

  if (!regex.hasMatch(value.trim())) {
    return 1;
  }
  return 0;
}
