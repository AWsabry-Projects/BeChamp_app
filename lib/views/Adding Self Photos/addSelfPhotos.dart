import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Adding%20Self%20Photos/components.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddSelfPhotos extends StatefulWidget {
  const AddSelfPhotos({super.key});

  @override
  State<AddSelfPhotos> createState() => _AddSelfPhotosState();
}

class _AddSelfPhotosState extends State<AddSelfPhotos> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello,\n$userName",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 30),
              child: Column(
                children: [
                  Container(
                      height: 171,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(41, 41, 41, 1),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 0.5, color: Colors.grey.shade500)),
                      child: image == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Image.asset("assets/image.png"),
                                  width:
                                      MediaQuery.of(context).size.width / 4.137,
                                ),
                                Text(
                                  "Upload your photo here",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(112, 112, 112, 1)),
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.insert_drive_file_outlined,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                  size:
                                      MediaQuery.of(context).size.height / 8.5,
                                ),
                                Text(
                                  "File name:\n${image!.name}",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(117, 117, 117, 1)),
                                )
                              ],
                            )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height / 15.1,
                    child: BeChampButton(
                        onPressed: () async {
                          await ImagePicker()
                              .pickImage(source: ImageSource.gallery)
                              .then((value) {
                            setState(() {
                              image = value;
                            });
                          });
                        },
                        child: Text(
                          "Upload your photo",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  Text(
                    "Notes",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  TextField(
                    style: TextStyle(color: Color.fromRGBO(117, 117, 117, 1)),
                    controller: notes,
                    maxLines: 10,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.5),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.5),
                            borderRadius: BorderRadius.circular(30)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.5),
                            borderRadius: BorderRadius.circular(30)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.5),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "Type your notes here ...",
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(117, 117, 117, 1)),
                        filled: true,
                        fillColor: Color.fromRGBO(41, 41, 41, 1)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 90,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15.1,
                    width: double.maxFinite,
                    child: BeChampButton(
                        onPressed: onTapOnSend,
                        child: Text("Send",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
