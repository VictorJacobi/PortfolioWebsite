import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/common/app_constants.dart';
import 'package:portfolio_website/ui/common/styles.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ABOUT',
                style: ktBody2.copyWith(color: const Color(0xFFBACFB5)),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text('My Story',
                  style: ktTitle3.copyWith(color: const Color(0xFFD4CD8B)),),
              ),
              Text(ksAbout,
              style: ktBody1.copyWith(color: Colors.white),)

            ],
          ),
        ],
      ),
    );
  }
}