import 'package:facebook_ui/models/publication.dart';
import 'package:facebook_ui/widget/circle_button.dart';
import 'package:facebook_ui/widget/publication_item.dart';
import 'package:facebook_ui/widget/quick_actions.dart';
import 'package:facebook_ui/widget/stories.dart';
import 'package:facebook_ui/widget/what_is_on_your_mind.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    const reactions = Reaction.values;

    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      final reactionIndex = random.integer(reactions.length - 1);
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );
      publications.add(publication);
    }

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
        children: [
          const SizedBox(height: 10),
          const WhatIsOnYourMind(
            userName: 'Lisa',
          ),
          const SizedBox(height: 20),
          const QuickActions(),
          const SizedBox(height: 20),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}

// Icons.photo_library_rounded
