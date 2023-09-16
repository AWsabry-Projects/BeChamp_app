import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Adding%20Goals/addingGoals.dart';
import 'package:bechamp/views/Personal%20Information/components.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Personal Information",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 10,
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
                  TextField(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Gender",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(
                        width: 150,
                        child: DropdownButton(
                            dropdownColor: Colors.grey[900],
                            value: genderValue,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Male",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                value: "Male",
                              ),
                              DropdownMenuItem(
                                child: Text("Female",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                                value: "Female",
                              )
                            ],
                            onChanged: (gender) {
                              setState(() {
                                genderValue = gender as String;
                              });
                            }),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 50,
                          child: BeChampButton(
                              onPressed: () {
                                goTo(context, AddingGoals());
                              },
                              child: Text(
                                "Next >",
                                style: Theme.of(context).textTheme.titleLarge,
                              ))),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}