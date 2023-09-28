import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/SignUp/components.dart';
import 'package:bechamp/views/Verification/verifyPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
                child: Text(
              "Sign Up\n",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 51.h,
            ),
            Container(
              width: double.maxFinite,
              height: 654.h,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 38, 38, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 100,
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: TextField(
                        style: TextStyle(color: Colors.grey.shade300),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            labelText: "Full Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            floatingLabelStyle: TextStyle(color: Colors.white)),
                        controller: name,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: TextField(
                        style: TextStyle(color: Colors.grey.shade300),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            labelText: "E-Mail",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            floatingLabelStyle: TextStyle(color: Colors.white)),
                        controller: email,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: TextField(
                        style: TextStyle(color: Colors.grey.shade300),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            labelText: "Phone no.",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            floatingLabelStyle: TextStyle(color: Colors.white)),
                        controller: phone,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: TextField(
                        style: TextStyle(color: Colors.grey.shade300),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            floatingLabelStyle: TextStyle(color: Colors.white)),
                        controller: password,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: SizedBox(
                          width: double.maxFinite,
                          height: 50,
                          child: BeChampButton(
                              onPressed: () {
                                goTo(
                                    context,
                                    VerifyPhone(
                                      phone: phone.text,
                                    ));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
