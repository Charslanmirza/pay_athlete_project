// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:signup_with_provider/providers/auth_provider.dart';
// import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';
// import 'package:signup_with_provider/widgets/custom_widgets/custom_textform_field.dart';

// import '../../constrants.dart';

// class SignUpForm extends StatefulWidget {
//   const SignUpForm({Key? key}) : super(key: key);

//   @override
//   State<SignUpForm> createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   late TextEditingController _nameController;
//   late TextEditingController _emailController;
//   late TextEditingController _passwordController;
//   late TextEditingController _confirmPasswordController;

//   File? userImage;
//   late String text;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     _nameController = TextEditingController();
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//     _confirmPasswordController = TextEditingController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _passwordController.dispose();
//     _emailController.dispose();
//     _confirmPasswordController.dispose();

//     super.dispose();
//   }

//   Future<String?>? pickImage() async {
//     FilePickerResult? image = await FilePicker.platform.pickFiles();
//     if (image == null) {
//       return null;
//     }
//     return image.files.first.path;
//   }

//   void saveForm() {
//     var form = _formKey.currentState;
//     if (userImage == null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Put Image"), backgroundColor: Colors.red),
//       );
//     }
//     if (form!.validate() && userImage != null) {
//       final auth = Provider.of<AuthPrivder>(context, listen: false);
//       auth.signUp(
//         email: _emailController.text,
//         name: _nameController.text,
//         password: _passwordController.text,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CustomTextFormField(
//             labelText: "Full Name",
//             textValidator: (value) {
//               if (value == null || value == '') {
//                 return "Please Enter The Name";
//               } else if (value.length < 4) {
//                 return 'Name is Too Short';
//               }
//               _nameController.text = value;
//               return null;
//             },
//           ),
//           gap20,
//           CustomTextFormField(
//             labelText: "Email",
//             textValidator: (value) {
//               if (value == null || value == '') {
//                 return "Please Enter The Email";
//               } else if (!value.contains('@') || !value.contains('.')) {
//                 return 'Email is Not Valid';
//               }
//               _emailController.text = value;

//               return null;
//             },
//           ),
//           gap20,
//           CustomTextFormField(
//             labelText: "Password",
//             hideText: true,
//             textValidator: (value) {
//               if (value == null || value == '') {
//                 return "Please Enter The Password";
//               } else if (value.length < 6) {
//                 return 'Password Is Too Short';
//               }
//               _passwordController.text = value;

//               return null;
//             },
//           ),
//           gap20,
//           CustomElevatedButton(onPressed: saveForm, text: text),
//         ],
//       ),
//     );
//   }
// }
