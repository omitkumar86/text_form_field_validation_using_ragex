// import 'package:flutter/material.dart';
//
// class FirstNameValidator {
//   static dynamic validateName(dynamic value) {
//     if (value.isEmpty) {
//       return 'First name is required';
//     }
//
//     // Regular expression pattern for first name validation
//     final RegExp regex = RegExp(r'^[a-zA-Z]+$');
//
//     if (!regex.hasMatch(value)) {
//       return 'Enter a valid first name';
//     }
//
//     return null; // Return null if the value is valid
//   }
// }
//
// class MyForm extends StatelessWidget {
//   final TextEditingController _firstNameController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Form'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _firstNameController,
//                 decoration: InputDecoration(
//                   labelText: 'First Name',
//                 ),
//                 validator: FirstNameValidator.validateName(_firstNameController.text),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Form is valid, proceed with submission
//                     // Add your logic here
//                   }
//                 },
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
