import 'package:carteler/screens/login_and_signup/login.dart';
import 'package:carteler/screens/login_and_signup/signup.dart';
import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: navyBlue,
      body: Container(
        padding:
            EdgeInsets.fromLTRB(width * 0.1, height * 0.1, width * 0.1, 20),
        height: height,
        width: width,
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/images/logo.png'),
            Utilities.button(height, width, "Login", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            }, Colors.white, const Color(0xff5D8ED1)),
            const SizedBox(height: 25),
            Utilities.button(height, width, "Signup", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            }, Colors.black, Colors.white),
            const SizedBox(height: 20),
            const Text(
              'Or login/signup via',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            Utilities.loginOptions(height, width)
          ],
        ),
      ),
    );
  }
}
