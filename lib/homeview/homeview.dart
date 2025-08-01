import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/add_story_card.dart';
import 'components/instagram_feed_card.dart';
import 'components/post_model.dart';
import 'components/story_card.dart';
import 'components/user_model.dart';

class InstagramHomeView extends StatelessWidget {
  const InstagramHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: SvgPicture.asset('assets/instagram/ig_logo.svg',color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/instagram/like.svg',color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/instagram/message.svg',color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/instagram/add.svg',color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 13),
                itemBuilder: (ctx, i) {
                  if (i == 0) {
                    return const AddStoryCard();
                  }
                  final user = users[i - 1];
                  return StoryCard(user: user);
                },
                separatorBuilder: (ctx, i) => const SizedBox(width: 12),
                itemCount: users
                    .length, // Fix here: Set itemCount to the length of the users list
              ),
            ),
            const SizedBox(height: 8),
            const Divider(height: 0),
            const SizedBox(height: 8),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, i) {
                  return InstagramFeedCard(post: posts[i]);
                },
                separatorBuilder: (ctx, i) => const SizedBox(height: 10),
                itemCount: posts.length)
          ],
        ),
      ),
    );
  }
}
