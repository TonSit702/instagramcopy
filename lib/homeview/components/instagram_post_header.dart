import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_model.dart';

class InstagramPostHeader extends StatelessWidget {
  final UserModel user;
  final bool isSponsored;
  const InstagramPostHeader(
      {super.key, required this.user, required this.isSponsored});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFC913B9),
                      Color(0xFFF9373F),
                      Color(0xFFFECD00)
                    ])),
            child: Container(
              height: 33.63,
              width: 33.63,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: NetworkImage(user.profilePic), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600, fontSize: 12, height: 0)),
              if (isSponsored)
                Text('Sponsored',
                    style: GoogleFonts.roboto(
                        fontSize: 11, fontWeight: FontWeight.w400))
            ],
          )),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
