import 'package:carteler/utils/colors.dart';
import 'package:flutter/material.dart';

class Utilities {
  static ClipPath logoContainer(double height, double width) {
    return ClipPath(
      clipper: CustomClipperImage(),
      child: Container(
        padding: const EdgeInsets.all(15),
        height: height * 0.3,
        width: width,
        color: navyBlue,
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }

  static button(double height, double width, String text, Function() onTap,
      Color color, Color buttonColor) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        primary: buttonColor,
      ),
      onPressed: onTap,
      child: Center(
          child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: color),
        ),
      )),
    );
  }

  static const MaterialColor primaryColor = MaterialColor(
    0xff15172a, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff131526), //10%
      100: Color(0xff111222), //20%
      200: Color(0xff0f101d), //30%
      300: Color(0xff0d0e19), //40%
      400: Color(0xff0b0c15), //50%
      500: Color(0xff080911), //60%
      600: Color(0xff06070d), //70%
      700: Color(0xff040508), //80%
      800: Color(0xff020204), //90%
      900: Color(0xff000000), //100%
    },
  );

  static appBar(double width) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: navyBlue,
      title: SizedBox(
        height: width * 0.35,
        width: width * 0.35,
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }

  static textField(
      String? Function(String?)? validator,
      double width,
      String label,
      TextEditingController textEditingController,
      Icon icon,
      bool obscure,
      TextInputAction textInputAction,
      TextCapitalization textCapitalization,
      TextInputType keyboardType) {
    return Container(
      // height: width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
      child: Center(
        child: TextFormField(
          keyboardType: keyboardType,
          validator: validator,
          obscureText: obscure,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none,
              icon: icon,
              label: Text(label),
              labelStyle: const TextStyle(fontSize: 13)),
        ),
      ),
    );
  }

  static loginOptions(double height, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: width * 0.1,
          width: width * 0.1,
          color: const Color(0xff1976d2),
          child: Image.asset(
            'assets/images/fb.png',
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          height: width * 0.1,
          width: width * 0.1,
          child: Image.asset(
            'assets/images/google.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

class CustomClipperImage extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.05, size.height);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 1, size.width, size.height * 0.65);

    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
