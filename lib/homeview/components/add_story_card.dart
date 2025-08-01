import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 60.63,
          width: 60.63,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60.63,
                width: 60.63,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1682724602143-a77d75d273b1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF1FA1FF)),
                child: const Icon(Icons.add, size: 12, color: Colors.white),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text('Your Story', style: GoogleFonts.roboto(fontSize: 11.5)),
       
      ],
    );
  }
}
