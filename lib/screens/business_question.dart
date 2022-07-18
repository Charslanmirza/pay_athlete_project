import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/screens/menu_screen.dart';

import '../constrants.dart';
import '../providers/auth_provider.dart';
import '../widgets/custom_widgets/custom_elevatedbutton.dart';
import '../widgets/custom_widgets/custom_textform_field.dart';

class BusinessQuestions extends StatefulWidget {
  const BusinessQuestions({Key? key}) : super(key: key);

  @override
  State<BusinessQuestions> createState() => _BusinessQuestionsState();
}

class _BusinessQuestionsState extends State<BusinessQuestions> {
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
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign-up questions for Business",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  gap20,
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextFormField(
                          labelText: "Name of the business",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter Name of the business";
                            }
                            _fnameController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "Language",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Language";
                            }
                            _languageController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "City and state location",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The State";
                            }
                            _cityController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "Education",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Education";
                            }
                            _eduController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "Type of business",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Type of business";
                            }
                            _schoolController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "Contact Information",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Contact";
                            }

                            _contactController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        CustomTextFormField(
                          labelText: "Bio",
                          textValidator: (value) {
                            if (value == null || value == '') {
                              return "Please Enter The Bio";
                            }
                            _bioController.text = value;

                            return null;
                          },
                        ),
                        gap10,
                        gap10,
                        CustomElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MenuScreen()));
                          },
                          text: "Next",
                          color: Color(0xffA75154),
                        ),
                        gap10,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
