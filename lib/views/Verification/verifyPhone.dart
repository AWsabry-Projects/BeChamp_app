import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Verification/components.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class VerifyPhone extends StatelessWidget {
  final String? phone;
  const VerifyPhone({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Phone Verification\n",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text("We sent a code to your number $phone",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Change phone",
                  style: Theme.of(context).textTheme.displaySmall,
                )),
            SizedBox(
              height: 40,
            ),
            OtpPinField(
              onSubmit: onSubmittingCode(context),
              onChange: (code) {},
              maxLength: numberOfFields,
              otpPinFieldStyle: OtpPinFieldStyle(
                  textStyle: TextStyle(color: Colors.white, fontSize: 30),
                  defaultFieldBorderColor: Colors.grey.shade700,
                  activeFieldBorderColor: Colors.grey,
                  fieldPadding: 5),
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_circle_left_sharp,
              color: Colors.white,
              size: 30,
            )),
      ),
    );
  }
}
