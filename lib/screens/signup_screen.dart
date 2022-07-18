// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';
// import 'package:signup_with_provider/widgets/custom_widgets/custom_textform_field.dart';
// import 'package:signup_with_provider/widgets/signup_screen_widgets/signup_from.dart';
// import 'package:auth_buttons/auth_buttons.dart';
// import '../constrants.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               icon: Icon(Icons.arrow_back),
//               color: Colors.black,
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 19.0, right: 12),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Athletes Create Account",
//                     textAlign: TextAlign.start,
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                   gap20,
//                   SignUpForm(),
//                   gap20,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: width(context) * 0.40,
//                         child: Divider(
//                           thickness: 1,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Container(
//                         height: height(context) * 0.03,
//                         color: Colors.black,
//                         child: Center(
//                           child: Text(
//                             " OR ",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: width(context) * 0.40,
//                         child: Divider(
//                           thickness: 1,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                   gap20,
//                   GoogleAuthButton(
//                     onPressed: () {},
//                     style: AuthButtonStyle(
//                         textStyle: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16,
//                             color: Colors.grey),
//                         height: height(context) * 0.07,
//                         iconType: AuthIconType.secondary,
//                         width: width(context)),
//                   ),
//                   gap20,
//                   FacebookAuthButton(
//                     onPressed: () {},
//                     style: AuthButtonStyle(
//                       textStyle: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                           fontSize: 16),
//                       iconColor: Colors.white,
//                       buttonColor: Color(0xff3A5998),
//                       height: height(context) * 0.07,
//                       width: width(context),
//                       iconType: AuthIconType.secondary,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Already have an account ?"),
//                       FlatButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             color: Color(0xffA75154),
//                           ),
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
