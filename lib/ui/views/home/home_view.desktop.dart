import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio_website/gen/assets.gen.dart';
import 'package:portfolio_website/ui/common/styles.dart';
import 'package:portfolio_website/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/views/home/pages/about_page.dart';
import 'package:portfolio_website/ui/views/home/pages/landing_page.dart';
import 'package:portfolio_website/ui/views/home/pages/project_page.dart';
import 'package:portfolio_website/ui/views/home/pages/service_page.dart';
import 'package:portfolio_website/ui/views/home/widgets/services_widget.dart';
import 'package:portfolio_website/ui/views/hover_widget.dart';
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
                            height: 250,width: 250,
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
                    Row(
                      children: [
                        Image.asset(Assets.pngs.badgeRemovebgPreview.path,height: 170,width: 170,fit: BoxFit.cover,),
                        Image.asset(Assets.pngs.imagesRemovebgPreview.path,height: 150,width: 150,fit: BoxFit.cover,),
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
           Positioned(
            top: 60,
            left: 400,
            child: Animate().custom(
              duration: 3.seconds,
              begin: 0,
              end: 1,
              builder: (_,value,__)=>  FloatingPage(
                width: screenWidth(context)*0.6*value,
                height: (screenHeight(context)-60)*value,
              ),).rotate().then().shake(duration: const Duration(milliseconds: 400)),
           ),
        ],
      ),
    );
  }
}

class FloatingPage extends HookWidget {
  final double? width;
  final double? height;
  const FloatingPage({super.key,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return Container(
      width: width??screenWidth(context),
      height: height??(screenHeight(context)),
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration:  BoxDecoration(
          gradient: const LinearGradient(colors: [
            kc01,
            Color(0xFF416433),
            Color(0xFF537542),
            Color(0xFF547C44),
            Color(0xFF636E37),
          ]),
          border: getDeviceType(MediaQuery.sizeOf(context),)==DeviceScreenType.desktop?const Border(
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
            bottom: BorderSide(
                color: Color(0xFFCFE7C7),
                width: 3
            ),


          ):
             null
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible: width==null?true:width!>550,
            child: Padding(
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
                      InkWell(
                        onTap: (){
                          scrollController.animateTo(200, duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        child: HoverContainer(
                          color: Colors.transparent,
                          hoverColor: const Color(0xFF182C12),
                          child: Text('About',
                            style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5),fontSize: 14),),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          scrollController.animateTo(650, duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        child: HoverContainer(
                          color: Colors.transparent,
                          hoverColor: const Color(0xFF182C12),
                          child: Text('Services',
                            style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5),fontSize: 14),),
                        ),
                      ),
                      // const SizedBox(width: 42,),
                      InkWell(
                        onTap: (){
                          scrollController.animateTo(800, duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        child: HoverContainer(
                          color: Colors.transparent,
                          hoverColor: const Color(0xFF182C12),
                          child: Text('Projects',
                            style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5),fontSize: 14),),
                        ),
                      ),
                      // const SizedBox(width: 42,),

                      // const SizedBox(width: 42,),
                      HoverContainer(
                        color: Colors.transparent,
                        hoverColor: const Color(0xFF182C12),
                        child: Text('Contact Me',
                          style: ktCaption3.copyWith(color: const Color(0xFFBCC2B5),fontSize: 14),),
                      ),
                    ],
                  ),
                  MaterialButton(onPressed: (){},
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                    color: const Color(0xFF182C12),
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
          ),
          Expanded(
            child: CustomScrollView(
              controller: scrollController,
              slivers: const [
                // ScrollTransformItem(
                //     builder: (offset) {
                //       return const LandingPage();
                //     }
                // ),
                SliverToBoxAdapter(
                    child: LandingPage(),
                ),
                SliverToBoxAdapter(
                    child: AboutPage(),
                ),
                 SliverToBoxAdapter(
                    child: ServicePage(),
                ),
                 SliverToBoxAdapter(
                    child: ProjectPage(),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

