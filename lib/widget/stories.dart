import 'package:facebook_ui/models/story.dart';
import 'package:facebook_ui/widget/avatar.dart';
import 'package:facebook_ui/widget/story_item.dart';
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
          return StoryItem(
            story: story,
            isFirst: (index == 0),
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}
