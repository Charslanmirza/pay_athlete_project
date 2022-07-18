import 'package:auth_buttons/auth_buttons.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/constrants.dart';
import 'package:signup_with_provider/providers/auth_provider.dart';
import 'package:signup_with_provider/screens/business_login.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_textform_field.dart';
import 'package:signup_with_provider/widgets/signup_screen_widgets/signup_from.dart';

class BusinessSignup extends StatefulWidget {
  const BusinessSignup({Key? key}) : super(key: key);

  @override
  State<BusinessSignup> createState() => _BusinessSignupState();
}

class _BusinessSignupState extends State<BusinessSignup> {
  late TextEditingController _fnameController;
  late TextEditingController _lnameController;
  late TextEditingController _languageController;
  late TextEditingController _cityController;
  late TextEditingController _eduController;
  late TextEditingController _schoolController;
  late TextEditingController _ageController;
  late TextEditingController _genderController;
  late TextEditingController _sportController;
  late TextEditingController _athleteController;
  late TextEditingController _nilController;
  late TextEditingController _contactController;
  late TextEditingController _bioController;

  late String text;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _fnameController = TextEditingController();
    _lnameController = TextEditingController();
    _languageController = TextEditingController();
    _cityController = TextEditingController();
    _eduController = TextEditingController();
    _schoolController = TextEditingController();
    _ageController = TextEditingController();
    _genderController = TextEditingController();
    _sportController = TextEditingController();
    _nilController = TextEditingController();
    _athleteController = TextEditingController();
    _contactController = TextEditingController();
    _bioController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    _languageController.dispose();
    _cityController.dispose();
    _eduController.dispose();
    _ageController.dispose();
    _schoolController.dispose();
    _genderController.dispose();
    _sportController.dispose();
    _nilController.dispose();
    _athleteController.dispose();
    _contactController.dispose();
    _bioController.dispose();

    super.dispose();
  }

  // Future<String?>? pickImage() async {
  //   FilePickerResult? image = await FilePicker.platform.pickFiles();
  //   if (image == null) {
  //     return null;
  //   }
  //   return image.files.first.path;
  // }

  void saveForm() {
    var form = _formKey.currentState;
    // if (userImage == null) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text("Put Image"), backgroundColor: Colors.red),
    //   );
    // }
    if (form!.validate() != null) {
      final auth = Provider.of<AuthPrivder>(context, listen: false);
      auth.signUp(
        firstName: _fnameController.text,
        lastName: _fnameController.text,
        language: _languageController.text,
        city: _cityController.text,
        edu: _eduController.text,
        age: _ageController.text,
        school: _schoolController.text,
        gender: _genderController.text,
        sport: _sportController.text,
        nil: _nilController.text,
        athlete: _athleteController.text,
        contact: _contactController.text,
        bio: _bioController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Business Create Account",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  gap20,
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextFormField(
                          labelText: "Full Name",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Name";
                            } else if (value.length < 4) {
                              return 'Name is Too Short';
                            }
                            _fnameController.text = value;
                            return null;
                          },
                        ),
                        gap20,
                        CustomTextFormField(
                          labelText: "Email",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Email";
                            } else if (!value.contains('@') ||
                                !value.contains('.')) {
                              return 'Email is Not Valid';
                            }
                            _lnameController.text = value;

                            return null;
                          },
                        ),
                        gap20,
                        CustomTextFormField(
                          labelText: "Password",
                          hideText: true,
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Password";
                            } else if (value.length < 6) {
                              return 'Password Is Too Short';
                            }
                            _bioController.text = value;

                            return null;
                          },
                        ),
                        gap20,
                        CustomElevatedButton(
                            color: Color(0xffA75154),
                            onPressed: saveForm,
                            text: "Business Create Account"),
                      ],
                    ),
                  ),
                  gap20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width(context) * 0.40,
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: height(context) * 0.03,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            " OR ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: width(context) * 0.40,
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  gap20,
                  GoogleAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.grey),
                        height: height(context) * 0.07,
                        iconType: AuthIconType.secondary,
                        width: width(context)),
                  ),
                  gap20,
                  FacebookAuthButton(
                    onPressed: () {},
                    style: AuthButtonStyle(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16),
                      iconColor: Colors.white,
                      buttonColor: Color(0xff3A5998),
                      height: height(context) * 0.07,
                      width: width(context),
                      iconType: AuthIconType.secondary,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?"),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BusinessLogin()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xffA75154),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
