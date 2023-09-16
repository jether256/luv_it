
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../user.dart';
class NewProfile extends StatefulWidget {
  const NewProfile({super.key});

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {

  final user =const User(
    name:'Steffi',
    age:20,
    urlImage:'https://funylife.in/wp-content/uploads/2023/04/58_Cute-Girl-Pic-WWW.FUNYLIFE.IN_-1-1024x1024.jpg',
  );
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
        body:SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                  image:DecorationImage(
                    image: NetworkImage(user.urlImage),
                  )
              ),
              child:const Text('profile man') ,
            ),
          ),
        ),
      ),
    );
  }
}
