
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

import 'main_profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  int _selectedIndex=0;

  static final List<Widget> _widgetOptions=<Widget>[
    const MainProfile(),
    const MainProfile(),
    const MainProfile(),
    const MainProfile(),
    const MainProfile(),
  ];


  void _onItemTapped(int index){

    setState(() {
      _selectedIndex=index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Container(
        decoration: const BoxDecoration(
            color:black,
        ),
        child:_widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: backGround,

        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,

            border: Border(top: BorderSide(color:blackround2,width: 2.0),
            )

          ),
          child: Container(
            height: 70,
            color:backGround,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(

                    onPressed: () {

                      _onItemTapped(0);
                    },
                  tooltip: 'ojiioho',
                    icon:Icon(_selectedIndex== 0 ? Icons.home:Icons.home_outlined,color:_selectedIndex== 0 ? Colors.pinkAccent:Colors.grey),

                ),

                IconButton(
                    onPressed: () {

                      _onItemTapped(1);
                    },
                    icon:Icon(_selectedIndex== 1 ? Icons.location_on:Icons.location_on,color:_selectedIndex== 1 ? Colors.pinkAccent:Colors.grey)
                ),

                Stack(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            top: -30,
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:blackround2,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:blackround1,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:black,
                                          ),
                                          child: IconButton(

                                              onPressed: () {

                                               // _onItemTapped(2);
                                              },
                                              icon:  const Icon( CupertinoIcons.star_fill,color:Colors.black
                                              ))),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                IconButton(
                    onPressed: () {

                      _onItemTapped(2);
                    },
                    icon:Icon(_selectedIndex== 2 ? CupertinoIcons.chat_bubble:CupertinoIcons.chat_bubble,color:_selectedIndex== 2 ? Colors.pinkAccent:Colors.grey)
                ),

                IconButton(
                    onPressed: () {

                      _onItemTapped(3);
                    },
                    icon:Icon(_selectedIndex== 3 ? CupertinoIcons.person:Icons.person,color:_selectedIndex== 3 ? Colors.pinkAccent:Colors.grey)
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
