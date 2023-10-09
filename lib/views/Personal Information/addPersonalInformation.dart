import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Adding%20Goals/addingGoals.dart';
import 'package:bechamp/views/Personal%20Information/components.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Personal Information",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55.sp,
                    fontFamily: "assets/Gilroy-ExtraBold.otf",
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.maxFinite,
              height: 594.h,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 38, 38, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
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
                            labelText: "Age",
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
                        controller: age,
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
                            labelText: "Weight",
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
                        controller: weight,
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
                            labelText: "Height",
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
                        controller: height,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: DropDownTextField(
                        clearIconProperty: IconProperty(color: Colors.white),
                        dropDownIconProperty: IconProperty(color: Colors.white),
                        textStyle: TextStyle(color: Colors.white),
                        textFieldDecoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            labelText: "Gender",
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
                        dropDownList: [
                          DropDownValueModel(name: "Male", value: "Male"),
                          DropDownValueModel(name: "Female", value: "Female")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(36.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              height: 50.h,
                              child: BeChampButton(
                                  onPressed: () {
                                    goTo(context, AddingGoals());
                                  },
                                  child: Text(
                                    "Next >",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontFamily:
                                            "assets/Gilroy-ExtraBold.otf",
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      ),
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
