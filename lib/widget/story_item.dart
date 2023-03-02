import 'package:facebook_ui/models/story.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class StoryItem extends StatelessWidget {
  final Story story;
  final bool isFirst;

  const StoryItem({Key? key, required this.story, this.isFirst = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(
        left: isFirst ? 18 : 0,
        right: 12,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    // width: 80,
                    // height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover, // Escala la imagen sin deformarla
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    size: 40,
                    asset: story.avatar,
                    borderWidth: 3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 85,
            child: Text(
              story.username,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
