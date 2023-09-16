import 'package:flutter/material.dart';

class WeekOrDayTile extends StatelessWidget {
  final String? image, title, description;
  final bool? isWeek;
  const WeekOrDayTile(
      {super.key, this.image, this.title, this.description, this.isWeek});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("$image")),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$title",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      isWeek as bool
                          ? Row(
                              children: [
                                Container(
                                  height: 20,
                                  margin: EdgeInsets.all(8),
                                  width: 3,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  "$description",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            )
                          : SizedBox()
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Theme.of(context).primaryColor)
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
