import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/gen/assets.gen.dart';
import 'package:portfolio_website/ui/common/app_colors.dart';
import 'package:portfolio_website/ui/common/app_constants.dart';
import 'package:portfolio_website/ui/common/styles.dart';
import 'package:portfolio_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/views/home/pages/about_page.dart';
import 'package:portfolio_website/ui/views/home/pages/landing_page.dart';
import 'package:portfolio_website/ui/views/home/pages/project_page.dart';
import 'package:portfolio_website/ui/views/home/pages/service_page.dart';
import 'package:portfolio_website/ui/views/home/widgets/services_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kc01ii ,
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: screenWidthFraction(context,dividedBy: 2),
                height: screenHeight(context),
                decoration: const BoxDecoration(
                  color: kc01,
                ),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                         ServicesWidget(
                            title: 'Web Development',
                            description: 'Building a full-stack structure for our working workflow process',
                        ),
                         ServicesWidget(
                            title: 'Mobile App Development',
                            description: 'Building a smooth UI for both android and iOS',
                        ),
                         ServicesWidget(
                            title: 'Desktop App Development',
                            description: 'Building a smooth UI for both android and iOS',
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 200,width: 200,
                          margin: const EdgeInsets.symmetric(vertical: 24),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFAE6149),width: 3),
                            image: DecorationImage(
                              // colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
                              fit: BoxFit.cover,
                              image: AssetImage(Assets.pngs.profileImage1.path),
                            )
                          ),
                                   ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Statistic',
                                style: ktCaption1Strong.copyWith(color: const Color(0xFF75896C)),),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0,bottom: 8),
                                child: Text('4+',
                                  style: ktTitle3.copyWith(color: const Color(0xFF9BA56D)),),
                              ),
                              Text('Project Delivered',
                                style: ktCaption1Strong.copyWith(color: const Color(0xFF75896C)),),


                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidthFraction(context,dividedBy: 2),
                height: screenHeight(context),
                decoration: const BoxDecoration(
                  color: kc01ii,
                ),
              )
            ],
          ),
          const Positioned(
            top: 60,
            left: 400,
            child: FloatingPage(),
          )
        ],
      ),
    );
  }
}

class FloatingPage extends StatelessWidget {
  const FloatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context)*0.7,
      height: screenHeight(context)-60,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            kc01,
            Color(0xFF416433),
            Color(0xFF537542),
            Color(0xFF547C44),
            Color(0xFF636E37),
          ]),
          border: Border(
            top: BorderSide(
                color: Color(0xFFCFE7C7),
                width: 3
            ),
            left: BorderSide(
                color: Color(0xFFCFE7C7),
                width: 3
            ),
            right: BorderSide(
                color: Color(0xFFCFE7C7),
                width: 3
            ),

          )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color:  Color(0xFFFF8268),
                        shape: BoxShape.circle,
                      ),
                      child: Text('J',style: ktCaption1.copyWith(color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Jacobi',style: ktCaption1.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Services',
                      style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5)),),
                    const SizedBox(width: 42,),
                    Text('Projects',
                      style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5)),),
                    const SizedBox(width: 42,),

                    Text('About',
                      style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5)),),
                    const SizedBox(width: 42,),
                    Text('Contact Me',
                      style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5)),),
                  ],
                ),
                MaterialButton(onPressed: (){},
                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                  color: const Color(0xFF4C5D3A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color:  Color(0xFF6A8455),
                      )
                  ),
                  child: Row(
                    children: [
                      Text('Download CV',
                        style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5)),),
                      const SizedBox(width: 4,),
                      const Icon(Icons.file_download,color: Color(0xFFBCC2B5),)
                    ],
                  ),)
              ],),
          ),
          Expanded(
            child: ScrollTransformView(
              children: [
                 ScrollTransformItem(
                   builder: (offset) {
                     return const LandingPage();
                   }
                 ),
                ScrollTransformItem(
                  builder: (offset) {
                    return const ServicePage();
                  }
                ),
                ScrollTransformItem(
                  builder: (offset) {
                    return const AboutPage();
                  }
                ),
                ScrollTransformItem(
                  builder: (offset) {
                    return const ProjectPage();
                  }
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

