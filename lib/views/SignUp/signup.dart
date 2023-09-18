import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/SignUp/components.dart';
import 'package:bechamp/views/Verification/verifyPhone.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: Text(
            "Sign Up\n",
            style: Theme.of(context).textTheme.displayLarge,
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.4,
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
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
                  TextField(
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
                  TextField(
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
                  TextField(
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
                  SizedBox(
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
                            style: Theme.of(context).textTheme.titleLarge,
                          )))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
