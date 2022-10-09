import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String age;
  final VoidCallback onTap;
  final VoidCallback onDeleteTap;

  const MarketCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.age,
    required this.onTap,
    required this.onDeleteTap,
  }) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.edit,
                    color: Color(0xFFF68A0A),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: onDeleteTap,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 90,
                width: 90,
                child: Image.asset(imageUrl),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(age,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF9B2B),
                    fontSize: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
