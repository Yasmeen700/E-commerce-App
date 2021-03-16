import 'package:flutter/material.dart';

import 'BaseValidator.dart';

class RequiredValidator extends BaseValidator {
  @override
  String getMessage(BuildContext context) {
    return 'required';
  }

  @override
  bool validate(String value) {
      return value != null && value.isNotEmpty;
  }
}