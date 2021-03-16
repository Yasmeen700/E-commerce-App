import 'package:flutter/material.dart';
import 'BaseValidator.dart';

class MinLengthValidator extends BaseValidator {
  final int minLength;

  MinLengthValidator({@required this.minLength});

  @override
  String getMessage(BuildContext context) {
    return 'Min Length'
        '$minLength '
        'Characters';
  }

  @override
  bool validate(String value) {
    return value.length >= minLength;
  }
}
