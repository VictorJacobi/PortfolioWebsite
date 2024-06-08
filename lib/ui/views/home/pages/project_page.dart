import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/common/styles.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

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
              Text('PROJECTS',
                style: ktBody2.copyWith(color: const Color(0xFFBACFB5)),),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text('Building Digital Product',
                  style: ktTitle3.copyWith(color: const Color(0xFFD4CD8B)),),
              ),

            ],
          ),
        ],
      ),
    );
  }
}