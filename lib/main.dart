import 'package:flutter/material.dart';
import 'package:text_form_field_validation_using_ragex/view/auth/register.dart';
import 'package:text_form_field_validation_using_ragex/view/pages/testing_validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegistrationPage(),
      //home: MyForm(),
    );
  }
}
