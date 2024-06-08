import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/common/styles.dart';


class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key,required this.title,required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      width: 120,
      height: 180,
      decoration: const BoxDecoration(
          color: Color(0xFF182C11),
          border: Border(

              bottom: BorderSide(color: Color(0xFFAE6149),width: 2)
          )
      ),


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.web_outlined,color: Color(0xFF9CA698),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(title,
              style: ktBody2.copyWith(color: const Color(0xFF9CA698),fontSize: 12,fontWeight: FontWeight.bold),),
          ),
          Text(description,
            style: ktCaption3.copyWith(color: const Color(0xFF75896C)),),

        ],
      ),
    );
  }
}