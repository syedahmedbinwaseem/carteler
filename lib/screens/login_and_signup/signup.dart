import 'package:carteler/screens/login_and_signup/set_profile.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController email = TextEditingController();
  GlobalKey fkey = GlobalKey<FormState>();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          // FocusScope.of(context).unfocus();
        },
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: fkey,
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
                    child: Column(
                      children: [
                        Text(
                          'Signup Now!',
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
                              'Email',
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
                              const Icon(Icons.email),
                              true,
                              TextInputAction.done,
                              TextCapitalization.none,
                              TextInputType.text),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Utilities.button(height, width, "Next", () {
                            FormState? fs = fkey.currentState as FormState?;
                            if (fs!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SetProfile()));
                            }
                          }, Colors.white, const Color(0xff5D8ED1)),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C8DD0),
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.grey.shade400,
                            ),
                            const SizedBox(width: 8),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.grey.shade400,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Or signup with',
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 30),
                        Utilities.loginOptions(height, width),
                        const SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                              text: 'Already a member?  ',
                              style: TextStyle(
                                  color: Color.fromRGBO(90, 105, 131, 1),
                                  fontSize: width * 0.035),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    // decoration: TextDecoration.underline,
                                    decorationThickness: 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                )
                              ]),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
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
