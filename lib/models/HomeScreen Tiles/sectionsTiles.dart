import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  final String? imagePath, title;
  const SectionTile({super.key, this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "${this.imagePath}",
            width: 175,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 170,
              child: Text(
                "$title",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
