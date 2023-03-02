import 'package:facebook_ui/models/story.dart';
import 'package:facebook_ui/widget/avatar.dart';
import 'package:flutter/material.dart';

final _stories = [
  Story(
    bg: 'assets/wallpapers/1.jpeg',
    avatar: 'assets/users/1.jpg',
    username: 'Laura',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpg',
    username: 'Carmen Calvo',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpg',
    username: 'Clara',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpg',
    username: 'Carmela de la Vega de la Rosa',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpg',
    username: 'Manuel',
  ),
];

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Container(
            height: 160,
            width: 90,
            margin: EdgeInsets.only(
              left: index == 0 ? 18 : 0,
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
                              fit: BoxFit
                                  .cover, // Escala la imagen sin deformarla
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
        },
        itemCount: _stories.length,
      ),
    );
  }
}
