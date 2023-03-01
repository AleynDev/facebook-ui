import 'circle_button.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        QuickButton(
          iconData: Icons.photo_library_rounded,
          title: 'Gallery',
          color: Color(0xff92be87),
        ),
        SizedBox(width: 10),
        QuickButton(
          iconData: Icons.supervised_user_circle_sharp,
          title: 'Tag Friends',
          color: Color(0xff7bbaff),
        ),
        SizedBox(width: 10),
        QuickButton(
          iconData: Icons.video_call_outlined,
          title: 'Live',
          color: Color(0xfffe7574),
        ),
      ],
    );
  }
}

class QuickButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color color;

  const QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color.withOpacity(0.2),
      ),
      child: Row(
        children: [
          CircleButton(
            color: color,
            iconData: iconData,
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
