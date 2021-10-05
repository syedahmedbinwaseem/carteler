import 'package:carteler/screens/login_and_signup/finalize_signup.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({Key? key}) : super(key: key);

  @override
  _SetProfileState createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  GlobalKey fkey = GlobalKey<FormState>();

  var gender = ["Male", "Female"];
  var selectedGender = null;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  DateTime? selectedDate = null;
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
                      children: [
                        Text(
                          'Set Your Profile!',
                          style: TextStyle(
                              color: const Color(0xff5D8ED1),
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (input!.isEmpty) {
                              return "First name cannot be empty";
                            }
                            return null;
                          },
                              width,
                              'First Name',
                              email,
                              const Icon(Icons.email),
                              false,
                              TextInputAction.next,
                              TextCapitalization.words,
                              TextInputType.name),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (input!.isEmpty) {
                              return "Last name cannot be empty";
                            }
                            return null;
                          },
                              width,
                              'Last Name',
                              email,
                              const Icon(Icons.near_me),
                              false,
                              TextInputAction.next,
                              TextCapitalization.none,
                              TextInputType.name),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Container(
                            height: width * 0.14,
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  height: width * 0.16,
                                  width: width * 0.35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Gender',
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
                                      items: gender
                                          .map((String dropDownStringItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(dropDownStringItem),
                                        );
                                      }).toList(),
                                      onChanged: (a) {
                                        setState(() {
                                          selectedGender = a;
                                        });
                                      },
                                      value: selectedGender,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime: DateTime(1950, 01, 01),
                                          maxTime: DateTime(2099, 1, 1),
                                          onChanged: (date) {},
                                          onConfirm: (date) {
                                        setState(() {
                                          selectedDate = date;
                                        });
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.en);
                                    },
                                    child: Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 8, 5),
                                      height: 200,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.grey.shade300,
                                          )),
                                      child: Row(
                                        children: [
                                          Icon(Icons.calendar_today,
                                              color: Colors.grey.shade600),
                                          const SizedBox(width: 10),
                                          Text(
                                              selectedDate == null
                                                  ? 'DOB'
                                                  : selectedDate!.day
                                                          .toString() +
                                                      "-" +
                                                      selectedDate!.month
                                                          .toString() +
                                                      "-" +
                                                      selectedDate!.year
                                                          .toString(),
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: selectedDate == null
                                                      ? Colors.grey.shade600
                                                      : Colors.black))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Utilities.textField((String? input) {
                            if (input!.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                              width,
                              'Username',
                              email,
                              const Icon(Icons.person),
                              false,
                              TextInputAction.next,
                              TextCapitalization.none,
                              TextInputType.name),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Utilities.button(height, width, "Next", () {
                            FormState? fs = fkey.currentState as FormState?;
                            if (fs!.validate() &&
                                selectedGender != null &&
                                selectedDate != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FinalizeSignup()));
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
                            const CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C8DD0),
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
