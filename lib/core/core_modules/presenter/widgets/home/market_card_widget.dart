import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketCardWidget extends StatelessWidget {
  const MarketCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.age,
    required this.onTap,
    required this.onDeleteTap,
  });
  final String imageUrl;
  final String title;
  final String age;
  final VoidCallback onTap;
  final VoidCallback onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.edit,
                    color: Color(0xFFF68A0A),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: onDeleteTap,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 90,
                width: 90,
                child: Image.asset(imageUrl),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(age,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFF9B2B),
                    fontSize: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
