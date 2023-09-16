import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Personal%20Information/addPersonalInformation.dart';

void Function(String code) onSubmittingCode(context) => (code) {
      goTo(context,
          PersonalInformation()); /*write the function here after submitting the code */
    };

int numberOfFields = 4;
