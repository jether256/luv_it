import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/color.dart';



class Profile3 extends StatefulWidget {
  const Profile3({super.key});

  @override
  State<Profile3> createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          image: const DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29yZWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",),
              fit: BoxFit.cover
          ),

        ),
        child: Stack(
          children: [





            const Positioned(
              bottom:8,
              left: 100,
              right: 100,
              child: Icon(CupertinoIcons.chevron_down,color:grey2,size:17,),
            ),
            Positioned(
              bottom:30 ,
              right: 20,
              child:Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color:backheart,width: 1),
                  color: Colors.transparent,
                ),
                child: const Icon(CupertinoIcons.heart_fill,color:backheart ,),
              ),
            ),


            Positioned(
              left: 20,
              bottom:120,
              child:  Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.grey,size: 17,),
                      Text('323,233',style: TextStyle(color: grey2),),
                    ],
                  ),
                ),
              ),
            ),


            const Positioned(
                left: 20,
                bottom:90,
                child:Text('잭과분홍콩나물',style:TextStyle(color:loc,fontSize: 20,fontWeight:FontWeight.bold),)
            ),
            const Positioned(
                left: 155,
                bottom:90,
                child:Text('25',style:TextStyle(color:loc,fontSize: 20),)
            ),



            const Positioned(
                left: 20,
                bottom:30,
                child:Text('서로 아껴주고 힘이 되어줄 사람 찾아요 \n 선릉으로 직장 다니고 있고 여행 좋아해요 \n 이상한 이야기하시는 분 바로 차단입니다 ',style:TextStyle(color:loc),)
            ),

          ],
        ) ,
      ),
    );
  }
}
