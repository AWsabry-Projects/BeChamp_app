import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTile extends StatelessWidget {
  final String? imagePath, title;
  const SectionTile({super.key, this.imagePath, this.title});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "$title",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontFamily: "assets/Gilroy-ExtraBold.otf",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(image: AssetImage("${this.imagePath}"))),
    );
  }
}
