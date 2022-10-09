import 'dart:developer' as developer;

void logger(String value, {bool isError = false}) {
  developer.log(value, name: 'NEXAPP');
}
