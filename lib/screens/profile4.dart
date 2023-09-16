import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/color.dart';

class Profile4 extends StatefulWidget {
  const Profile4({super.key});

  @override
  State<Profile4> createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Colors.transparent,Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.7,1],
          ),
          image: const DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29yZWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",),
              fit: BoxFit.cover,
            alignment: Alignment(-0.3, 0),
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
              bottom:185,
              child:  Container(
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
            ),


            const Positioned(
                left: 20,
                bottom:160,
                child:Text('잭과분홍콩나물',style:TextStyle(color:loc,fontSize: 20,fontWeight:FontWeight.bold),)
            ),
            const Positioned(
                left: 155,
                bottom:90,
                child:Text('25',style:TextStyle(color:loc,fontSize: 20),)
            ),


            Positioned(
              left: 20,
              bottom:127,
              child:Container(
                decoration: BoxDecoration(
                    border: Border.all(color: pink),
                    color:Colors.pink.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)
                ),
                child:   const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('💖 진지한 연애를 찾는 중 ',style: TextStyle(color: grey2),),
                ),
              ),),





            Positioned(
              left: 20,
              bottom:95,
              child:Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:   const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('🍸 전혀 안 함',style: TextStyle(color: grey2),),
                ),
              ),),

            Positioned(
              left:118,
              bottom:95,
              child:Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:   const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('🍸 비흡연',style: TextStyle(color: grey2),),
                ),
              ),),






            Positioned(
              left: 20,
              bottom:63,
              child:Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:   const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('💪 매일 1시간 이상',style: TextStyle(color: grey2),),
                ),
              ),),

            Positioned(
              left: 20,
              bottom:30,
              child:Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child:   const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text('👏 만나는 걸 좋아함',style: TextStyle(color: grey2),),
                ),
              ),),
            Positioned(
              left: 150,
              bottom:30,
              child:Container(
                decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child:Text('INFP',style: TextStyle(color: grey2),),
                ),
              ),),

          ],
        ) ,
      ),
    );
  }
}
