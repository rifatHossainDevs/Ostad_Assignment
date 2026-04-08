import 'package:flutter/material.dart';

class InterestCard extends StatelessWidget {
  final String image;
  final String title;
  final String desc;

  const InterestCard({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: (width - 40) / 2,
        height: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 109,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF39454D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                desc,
                style: TextStyle(fontSize: 14, color: Color(0xFF5B5B5C)),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color(0xFFECEBEB),
                    width: 1.5,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    "View More",
                    style: TextStyle(fontSize: 16, color: Color(0xFF1A84E6)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
