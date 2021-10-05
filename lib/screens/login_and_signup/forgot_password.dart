import 'package:carteler/screens/login_and_signup/reset_confirmation.dart';
import 'package:carteler/screens/login_and_signup/signup.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController email = TextEditingController();

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
                  child: Column(
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: const Color(0xff5D8ED1),
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Text(
                          'Please Enter your Email below, and we\'ll send a recovery link to your account.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Utilities.textField(
                            (String? input) {},
                            width,
                            'Email Address',
                            email,
                            const Icon(Icons.email),
                            false,
                            TextInputAction.next,
                            TextCapitalization.none,
                            TextInputType.emailAddress),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Utilities.button(height, width, "Reset Password",
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetConfirmation()));
                        }, Colors.white, const Color(0xff5D8ED1)),
                      ),
                      const SizedBox(height: 40),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Return to Login',
                                style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const VerticalDivider(
                              color: Colors.black,
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: const Text(
                                'Want to Signup?',
                                style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
