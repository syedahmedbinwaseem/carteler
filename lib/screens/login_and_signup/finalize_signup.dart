import 'package:carteler/screens/login_and_signup/terms_and_conditions.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FinalizeSignup extends StatefulWidget {
  const FinalizeSignup({Key? key}) : super(key: key);

  @override
  _FinalizeSignupState createState() => _FinalizeSignupState();
}

class _FinalizeSignupState extends State<FinalizeSignup> {
  GlobalKey fkey = GlobalKey<FormState>();
  var billboard = ["For the society", "For personal use"];
  var selectedBoard = null;

  var role = ["Owner", "Dealer", "User"];
  var selectedRole = null;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'One Step Away!',
                            style: TextStyle(
                                color: const Color(0xff5D8ED1),
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            height: width * 0.16,
                            // width: width * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: const Text(
                                  'My main billboard will be',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                                dropdownColor: Colors.grey[300],
                                isExpanded: true,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Open Sans',
                                ),
                                items:
                                    billboard.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (a) {
                                  setState(() {
                                    selectedBoard = a;
                                  });
                                },
                                value: selectedBoard,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            height: width * 0.16,
                            // width: width * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: const Text(
                                  'Role',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Open Sans',
                                  ),
                                ),
                                dropdownColor: Colors.grey[300],
                                isExpanded: true,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Open Sans',
                                ),
                                items: role.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (a) {
                                  setState(() {
                                    selectedRole = a;
                                  });
                                },
                                value: selectedRole,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (input!.isEmpty) {
                              return "Department number cannot be empty";
                            }
                            return null;
                          },
                              width,
                              'Department Number',
                              email,
                              const Icon(Icons.work),
                              false,
                              TextInputAction.next,
                              TextCapitalization.none,
                              TextInputType.number),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            'I want to receive: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.035),
                          ),
                        ),
                        const SizedBox(height: 0),
                        CheckboxListTile(
                          title: Text(
                            "All my billboard(s) posts.",
                            style: TextStyle(
                                color: Color.fromRGBO(90, 105, 131, 1),
                                fontSize: width * 0.035),
                          ),
                          value: true,
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          dense: false,
                          title: Text(
                            "Other billboards public posts.",
                            style: TextStyle(
                                color: Color.fromRGBO(90, 105, 131, 1),
                                fontSize: width * 0.035),
                          ),
                          value: true,
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        const SizedBox(height: 20),
                        CheckboxListTile(
                          dense: false,
                          title: RichText(
                            text: TextSpan(
                                text: 'Agree to ',
                                style: TextStyle(
                                    color: Color.fromRGBO(90, 105, 131, 1),
                                    fontSize: width * 0.035),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('asd');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TermsConditions()));
                                      },
                                    text: 'Terms & Conditions',
                                    style: TextStyle(
                                      // decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  )
                                ]),
                          ),
                          value: true,
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Utilities.button(height, width, "Signup!", () {
                            FormState? fs = fkey.currentState as FormState?;
                            if (fs!.validate() &&
                                selectedBoard != null &&
                                selectedRole != null) {}
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
                            const CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C8DD0),
                            ),
                            const SizedBox(width: 8),
                            const CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C8DD0),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Center(
                          child: Text(
                            'Or signup with',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Utilities.loginOptions(height, width),
                        const SizedBox(height: 30),
                        Center(
                          child: RichText(
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
