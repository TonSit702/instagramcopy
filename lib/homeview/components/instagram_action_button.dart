import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InstagramActionButton extends StatelessWidget {
  const InstagramActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              icon: SvgPicture.asset('assets/instagram/like.svg',
                  color: Colors.white)),
          const SizedBox(width: 4),
          IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              icon: SvgPicture.asset('assets/instagram/comment.svg',
                  color: Colors.white)),
          const SizedBox(width: 4),
          IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              icon: SvgPicture.asset('assets/instagram/share.svg',
                  color: Colors.white)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              icon: SvgPicture.asset('assets/instagram/bookmark.svg',
                  color: Colors.white)),
        ],
      ),
    );
  }
}
