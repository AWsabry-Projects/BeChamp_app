import 'package:flutter/material.dart';

class WeekOrDayTile extends StatelessWidget {
  final String? image, title, description;
  final bool? isWeek;
  const WeekOrDayTile(
      {super.key, this.image, this.title, this.description, this.isWeek});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("$image")),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "$title",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          isWeek as bool
              ? Text(
                  "$description",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              : SizedBox()
        ],
      ),
    );
  }
}
