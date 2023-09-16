
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
class ProfileNo extends StatefulWidget {
  const ProfileNo({super.key});

  @override
  State<ProfileNo> createState() => _ProfileNoState();
}

class _ProfileNoState extends State<ProfileNo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: blackround1,
          borderRadius:BorderRadius.circular(8),),
        child:const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('추천 드릴 친구들을 준비 중이에요',style: TextStyle(fontWeight: FontWeight.bold,color: grey2,fontSize: 20),),
              SizedBox(height: 10,),
              Text('매일 새로운 친구들을 소개시켜드려요',style: TextStyle(fontSize: 14,color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }
}
