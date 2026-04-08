import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostad_assignment/widget/InterestCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF6F6F7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///Profile Cart
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(minHeight: 400),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 30),

                        ///Profile Image
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Color(0xFFCACED0),
                          foregroundImage: AssetImage(
                            "assets/images/profile_image.png",
                          ),
                        ),
                        SizedBox(height: 12),

                        ///Name
                        const Text(
                          "John Doe",
                          style: TextStyle(
                            color: Color(0xFF39454D),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        ///Profession
                        Text(
                          "Flutter Developer",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(height: 20),

                        ///description
                        Text(
                          "Passionate about creating user-friendly and engaing digital experiences.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF39454D),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 20),

                        Container(
                          height: 1,
                          width: (width - 48),
                          decoration: BoxDecoration(color: Color(0xFFE4E4E4)),
                        ),
                        SizedBox(height: 20),

                        ///Contact Info
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/email.svg",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 12),
                              Text(
                                "john.doe@example.com",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF39454D),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/phone.svg",
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "+123 456 7890",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF39454D),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),

                        ///Elevated Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ///Follow Button
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Follow",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            ///Message Button
                            SizedBox(
                              width: 150,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF3F4A52),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16,)
                      ],
                    ),
                  ),
                ),
              ),

              ///Interests
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 14,
                  bottom: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 2,
                      width: 130,
                      decoration: BoxDecoration(color: Color(0xFFDEDEDF)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        "Interests",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF39454D),
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 130,
                      decoration: BoxDecoration(color: Color(0xFFDEDEDF)),
                    ),
                  ],
                ),
              ),

              ///Interest Card
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  children: [
                    InterestCard(image: 'assets/images/travel.png', title: 'Travel', desc: 'Exploring new places around the world',),
                    InterestCard(image: 'assets/images/photography.png', title: 'Photography', desc: 'Capturing moments through the lens',),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
