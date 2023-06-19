import 'package:flutter/material.dart';
import 'package:text_form_field_validation_using_ragex/view/pages/home_page.dart';

import '../../helper/text_form_field_validation.dart';
import '../widgets/reusable_text_form_field_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextFormFieldValidation textFormFieldValidation = TextFormFieldValidation();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Registration",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  /// For First Name
                  Text(
                    "First Name",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  ReusableTextFormFieldWidget(
                    controller: firstNameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                    validator: (value) {
                      return TextFormFieldValidation.validateFirstName(value);
                    },
                    hintText: 'Enter First Name',
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  /// For Last Name
                  Text(
                    "Last Name",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  ReusableTextFormFieldWidget(
                    controller: lastNameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                    validator: (value) {
                      return TextFormFieldValidation.validateLastName(value);
                    },
                    hintText: 'Enter Last Name',
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  /// For Email
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  ReusableTextFormFieldWidget(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                    validator: (value) {
                      return TextFormFieldValidation.validateEmail(value);
                    },
                    hintText: 'Enter Email',
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  /// For Phone Number
                  Text(
                    "Phone",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  ReusableTextFormFieldWidget(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                    validator: (value) {
                      return TextFormFieldValidation.validatePhoneNumber(value);
                    },
                    hintText: 'Enter Phone Number',
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  /// For Password
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  ReusableTextFormFieldWidget(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                    validator: (value) {
                      return TextFormFieldValidation.validatePassword(value);
                    },
                    hintText: 'Enter Password',
                  ),

                  /// Button
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        }
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
