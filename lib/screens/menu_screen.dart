import 'package:flutter/material.dart';
import 'package:signup_with_provider/constrants.dart';
import 'package:signup_with_provider/screens/athlete_screen.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Home",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  gap20,
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AthleteScreen()));
                    },
                    text: "Athletes",
                    color: Color(0xff97D5EA),
                  ),
                  gap20,
                  CustomElevatedButton(
                    onPressed: () {},
                    text: "Business",
                    color: Color(0xff97D5EA),
                  ),
                  gap20,
                  CustomElevatedButton(
                    onPressed: () {},
                    text: "Live Nil Bidding",
                    color: Color(0xff97D5EA),
                  ),
                  gap20,
                  CustomElevatedButton(
                    onPressed: () {},
                    text: "NIL Opportunities",
                    color: Color(0xffA75154),
                  ),
                  gap20,
                  CustomElevatedButton(
                      color: Color(0xff97D5EA),
                      onPressed: () {},
                      text: "Complete Nil Deals"),
                  gap20,
                  CustomElevatedButton(
                      color: Color(0xff97D5EA),
                      onPressed: () {},
                      text: "Recruiting Highlight Video"),
                  gap20,
                  CustomElevatedButton(
                      color: Color(0xff97D5EA),
                      onPressed: () {},
                      text: "Build Your Own Brand"),
                  gap20,
                  CustomElevatedButton(
                      color: Color(0xffFCE302),
                      onPressed: () {},
                      text: "Von Elijah Fitness"),
                  gap10,
                ],
              ),
            ),
          )),
    );
  }
}
