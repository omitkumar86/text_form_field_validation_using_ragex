class TextFormFieldValidation {
  /// For First Name Validation
  static String? validateFirstName(value) {
    final RegExp firstNameRegExp = RegExp(r'^[a-zA-Z]+$');
    //final RegExp firstNameCapitalRegExp = RegExp(r'^[A-Z]+$');
    if (value == null || value.isEmpty) {
      return 'This filed is required';
    } else if (!firstNameRegExp.hasMatch(value)) {
      return 'Invalid first name';
    }

    // else if (!firstNameCapitalRegExp.hasMatch(value)) {
    //   return 'First letter must be capital';
    // }
    return null;
  }

  /// For Last Name Validation
  static String? validateLastName(value) {
    final RegExp firstNameRegExp = RegExp(r'^[a-zA-Z]+$');
    if (value == null || value.isEmpty) {
      return 'This filed is required';
    } else if (!firstNameRegExp.hasMatch(value)) {
      return 'Invalid last name';
    }
    return null;
  }

  /// For Email Validation
  static String? validateEmail(String value) {
    final RegExp emailRegExp =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    if (value == null || value.isEmpty) {
      return 'This filed is required';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  /// For Phone Number Validation
  static String? validatePhoneNumber(String value) {
    final RegExp phoneRegExp = RegExp(r'^[0-9]{11}$');
    if (value == null || value.isEmpty) {
      return 'This filed is required';
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }

  /// For Password Validation
  static String? validatePassword(String value) {
    final RegExp passwordRegExp = RegExp(
        "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?:{}|<>]).*");
    if (value == null || value.isEmpty) {
      return 'This filed is required';
    } else if (!passwordRegExp.hasMatch(value)) {
      return 'Invalid password';
    }
    return null;
  }
}
