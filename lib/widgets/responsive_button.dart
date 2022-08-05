import 'package:app_music/themes/colors.dart';
import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;


  ResponsiveButton({Key? key, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.mainColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('NEXT'),
        ],
      ),
    );
  }
}
