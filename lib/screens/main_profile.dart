import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:luv_it/screens/profile2.dart';
import 'package:luv_it/screens/profile3.dart';
import 'package:luv_it/screens/profile4.dart';
import 'package:luv_it/screens/profile7.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/color.dart';
import '../user.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {

  //Profile profile = new Profile();


  final pages=[
    const Profile2(),
    const Profile3(),
    const Profile4(),
    const ProfileNo(),

  ];




  final PageController pageController = PageController(initialPage:0);

  int _activePic=0;


 final List<Widget> _cards = [
    const Profile2(),
    const Profile3(),
    const Profile4(),
    const ProfileNo(),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:blackround1,
            appBar:PreferredSize(
              preferredSize: const Size.fromHeight(50), // Set this height
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: blackround1,
                  ),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,

                        children: [

                          const Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.grey,size:17,),
                              Text('목이길어슬픈기린님의 새로운 스팟',maxLines: 1,overflow: TextOverflow.clip,style: TextStyle(color:grey2,fontSize: 12),)
                            ],
                          ),
                          Row(
                            children: [

                              Container(
                                decoration: BoxDecoration(
                                  color:black,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.pink,size: 17,),
                                      Text('323,233',style: TextStyle(color: grey2),),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Icon(CupertinoIcons.bell,size: 17,color: grey2,),
                              // Container(
                              //   margin: const EdgeInsets.all(10.0),
                              //   decoration: const BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     color: Colors.orange,
                              //   ),
                              // )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),

                ),
              ),
            ),
          body:Stack(
            children: [



              PageView.builder(
                  controller:pageController,
                  itemCount:_cards.length,
                  onPageChanged: (int page){

                    setState(() {
                      _activePic=page;
                    });
                  },
                itemBuilder: (BuildContext context, int index) {

                    return CardSwiper(
                      cardsCount: _cards.length,

                      cardBuilder: (context, index, percentThresholdX, percentThresholdY){

                        return  _cards[index % _cards.length];
                      },
                    );

                },
              ),

              Positioned(
                top: 10,
                left: 100,
                right: 100,
                child:Container(
                  color: Colors.transparent,
                  child:Row(
                    children:List<Widget>.generate(_cards.length, (index) =>Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 10),
                      child:InkWell(
                        onTap: (){
                          pageController.animateToPage(index, duration:const Duration(microseconds: 300), curve:Curves.bounceIn);
                        },
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: _activePic==index ?
                          Colors.pink:Colors.grey,
                          ),
                      ),


                      ),
                    )),
                  ),
                ),


              // Positioned(
              //   top:10,
              //   left: 100,
              //   right: 100,
              //
              //   child:InkWell(
              //     onTap: (){
              //
              //       pageController.animateTo(index, duration:const Duration(microseconds: 300), curve:Curves.bounceIn);
              //     },
              //     child: SmoothPageIndicator(
              //       controller: pageController,
              //       count:_cards.length,
              //       effect: const ExpandingDotsEffect(
              //         dotColor:Colors.black,
              //         activeDotColor:Colors.pink,
              //         dotHeight: 4,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),

        ),
      );
  }
}
