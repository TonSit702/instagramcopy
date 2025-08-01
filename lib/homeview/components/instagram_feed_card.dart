import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'heart_animation_widget.dart';
import 'instagram_action_button.dart';
import 'instagram_post_header.dart';
import 'post_model.dart';

class InstagramFeedCard extends StatefulWidget {
  final PostModel post;
  const InstagramFeedCard({super.key, required this.post});

  @override
  State<InstagramFeedCard> createState() => _InstagramFeedCardState();
}

class _InstagramFeedCardState extends State<InstagramFeedCard> {
  bool isLiked = false;
  bool isHeartAnimating = false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InstagramPostHeader(
          user: widget.post.user, isSponsored: widget.post.isSponsored),
      const SizedBox(height: 7),
      GestureDetector(
        onDoubleTap: () {
          setState(() {
            isHeartAnimating = true;
            isLiked = true;
          });
        },
        child: SizedBox(
          height: 390,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                widget.post.picture,
                height: 390,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Opacity(
                opacity: isHeartAnimating ? 1 : 0,
                child: HeartAnimationWidget(
                  isAnimating: isHeartAnimating,
                  duration: const Duration(milliseconds: 700),
                  onEnd: () {
                    setState(() {
                      isHeartAnimating = false;
                    });
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 7),
      const InstagramActionButton(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text('${widget.post.likes} Likes',
            style:
                GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w600)),
      ),
      const SizedBox(height: 2),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
              text: TextSpan(
                  text: '${widget.post.user.name}: ',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  children: [
                TextSpan(
                    text: widget.post.description,
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400,color: Colors.white))
              ]))),
      const SizedBox(height: 2),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'View all ${widget.post.comments} comments',
          style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.5)),
        ),
      )
    ]);
  }
}
