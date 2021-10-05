import 'package:carteler/utils/colors.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyBlue,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 40),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/logo.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Terms and Conditions of Use',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.056,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff5D8ED1)),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta, dui eget porttitor fringilla, odio erat pretium arcu, et eleifend tortor libero at est. Duis lobortis nulla consectetur nisl imperdiet efficitur. Nullam eleifend tincidunt nisl, a cursus lectus hendrerit aliquet. Nunc venenatis dui eu mi sollicitudin sollicitudin. Curabitur auctor sapien luctus neque pharetra, eu gravida mi sagittis. Sed non dictum turpis, sed gravida diam. Nunc ligula quam, lobortis non diam non, interdum tristique lacus. Praesent quis ipsum quis elit semper posuere.orem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta, dui eget porttitor fringilla, odio erat pretium arcu, et eleifend tortor libero at est. Duis lobortis nulla consectetur nisl imperdiet efficitur. Nullam eleifend tincidunt nisl, a cursus lectus hendrerit aliquet. Nunc venenatis dui eu mi sollicitudin sollicitudin. Curabitur auctor sapien luctus neque pharetra, eu gravida mi sagittis. Sed non dictum turpis, sed gravida diam. Nunc ligula quam, lobortis non diam non, interdum tristique lacus. Praesent quis ipsum quis elit semper posuere.orem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta, dui eget porttitor fringilla, odio erat pretium arcu, et eleifend tortor libero at est. Duis lobortis nulla consectetur nisl imperdiet efficitur. Nullam eleifend tincidunt nisl, a cursus lectus hendrerit aliquet. Nunc venenatis dui eu mi sollicitudin sollicitudin. Curabitur auctor sapien luctus neque pharetra, eu gravida mi sagittis. Sed non dictum turpis, sed gravida diam. Nunc ligula quam, lobortis non diam non, interdum tristique lacus. Praesent quis ipsum quis elit semper posuere.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
