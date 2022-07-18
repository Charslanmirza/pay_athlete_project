import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/constrants.dart';
import 'package:signup_with_provider/providers/auth_provider.dart';
import 'package:signup_with_provider/screens/athletes_signup.dart';
import 'package:signup_with_provider/screens/business_signup.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<AuthPrivder>(context, listen: false).user!;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // gap40,
              // Center(
              //   child: CircleAvatar(
              //     radius: 100,
              //     backgroundImage: FileImage(File(user.imagePath)),
              //   ),
              // ),
              // gap80,
              CustomElevatedButton(
                  color: Color(0xffA75154),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AthletesSignup()));
                  },
                  text: "ATHLETES ACCOUNT"),
              gap10,
              CustomElevatedButton(
                  color: Color(0xffA75154),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BusinessSignup()));
                  },
                  text: "BUSINESS ACCOUNT")
            ],
          ),
        ),
      ),
    );
  }
}
