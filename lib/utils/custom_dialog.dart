import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  CustomDialog(
      {required this.headerText,
      required this.bottomText,
      required this.successText});
  String headerText = "";
  String bottomText = "";
  String successText = "";

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  bool yesPressed = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        height: width * 0.6,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: yesPressed
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                      height: width * 0.2,
                      width: width * 0.2,
                      child: Image.asset('assets/images/checked.png')),
                  const SizedBox(height: 10),
                  Text(
                    'Done Successfully!',
                    style: TextStyle(
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: width * 0.05),
                  ),
                  const SizedBox(height: 10),
                  Text(widget.successText),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: width * 0.15,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.headerText,
                    style: TextStyle(
                        decorationThickness: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: width * 0.05),
                  ),
                  const SizedBox(height: 10),
                  Text(widget.bottomText),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            primary: const Color(0xff707070),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Center(
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      const SizedBox(width: 10),
                      TextButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            primary: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              yesPressed = true;
                            });
                          },
                          child: const Center(
                            child: Text(
                              'Yes',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
