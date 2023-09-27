import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Verification/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class VerifyPhone extends StatelessWidget {
  final String? phone;
  const VerifyPhone({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(27.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Phone Verification\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text("We sent a code to your number $phone",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Change phone",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
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
