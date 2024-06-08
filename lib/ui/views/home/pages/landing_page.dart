import 'package:flutter/material.dart';
import 'package:portfolio_website/gen/assets.gen.dart';
import 'package:portfolio_website/ui/common/styles.dart';
import 'package:portfolio_website/ui/common/ui_helpers.dart';
import 'package:typewritertext/v3/typewriter.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,width: 300,
              margin: const EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFAE6149),width: 3),
                  image: DecorationImage(
                    colorFilter: const ColorFilter.mode(Colors.black, BlendMode.color),
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.pngs.profileImage1.path),
                  )
              ),
            ),
            Positioned(
              bottom: -20,
              child: Column(
                children: [
                  TypeWriter.text(
                    'Alabi Victor Oluwatobi.',
                    repeat: true,
                    duration: const Duration(milliseconds: 200),
                    style: ktLargeTitle.copyWith(color: const Color(0xFFD5CF8D)),),
                  Text('Software Engineer - Flutter|Dart|Firebase|git',
                    style: ktBody1.copyWith(color: const Color(0xFFC3D8BC)),),
                ],
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 60),
          color: const Color(0xFF334825),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.pngs.linkedIn.path,height: 30,width: 30,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('LinkedIn',
                      style: ktBody1.copyWith(color: const Color(0xFF98B09F)),),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.pngs.google.path,height: 30,width: 30,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Google',
                      style: ktBody1.copyWith(color: const Color(0xFF98B09F)),),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.pngs.x.path,height: 30,width: 30,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('X',
                      style: ktBody1.copyWith(color: const Color(0xFF98B09F)),),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.pngs.github.path,height: 30,width: 30,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Github',
                      style: ktBody1.copyWith(color: const Color(0xFF98B09F)),),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.pngs.github.path,height: 30,width: 30,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Facebook',
                      style: ktBody1.copyWith(color: const Color(0xFF98B09F)),),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}