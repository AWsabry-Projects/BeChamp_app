import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  final String? imagePath, title;
  const SectionTile({super.key, this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "$title",
              style: TextStyle(
                  fontFamily: "bechampBold",
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("${this.imagePath}"))),
    );
  }
}
