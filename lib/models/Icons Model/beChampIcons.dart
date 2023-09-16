import 'package:flutter/material.dart';

class BeChampIcon extends StatelessWidget {
  final String? active, unActive;
  final bool? isActive;
  const BeChampIcon(
      {super.key,
      required this.active,
      required this.unActive,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive as bool
        ? Image.asset(
            "$active",
            width: 50,
          )
        : Image.asset(
            "$unActive",
            width: 50,
          );
  }
}
