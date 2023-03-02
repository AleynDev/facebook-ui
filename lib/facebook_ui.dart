import 'package:facebook_ui/widget/circle_button.dart';
import 'package:facebook_ui/widget/quick_actions.dart';
import 'package:facebook_ui/widget/stories.dart';
import 'package:facebook_ui/widget/what_is_on_your_mind.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Color(0xffbfbfbf),
            iconData: Icons.search,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Color(0xfffe7574),
            iconData: Icons.doorbell_outlined,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Color(0xff7bbaff),
            iconData: Icons.supervised_user_circle_outlined,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Colors.blueAccent,
            iconData: Icons.messenger_rounded,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 20,
        // ).copyWith(
        //   top: 15,
        // ),
        children: const [
          SizedBox(height: 10),
          WhatIsOnYourMind(
            userName: 'Lisa',
          ),
          SizedBox(height: 20),
          QuickActions(),
          SizedBox(height: 20),
          Stories(),
        ],
      ),
    );
  }
}

// Icons.photo_library_rounded
