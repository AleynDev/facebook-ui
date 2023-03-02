import 'package:flutter/material.dart';

import 'avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  final String userName;

  const WhatIsOnYourMind({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          const Avatar(
            size: 50,
            asset: 'assets/users/1.jpg',
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Text(
              "What's on your mind, $userName?",
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
