

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/cubit/states.dart';
import 'package:graduation/modules/modules_screen/HomePage.dart';
import 'package:graduation/modules/modules_screen/ImageGeneration.dart';
import 'package:graduation/modules/modules_screen/TextSimplification.dart';
import 'package:graduation/modules/modules_screen/VideoConversion.dart';

class GraduationCubit extends Cubit<GraduationStates>{
  GraduationCubit():super(InitialGraduationAppStates());

  static GraduationCubit get(context) => BlocProvider.of(context);

  int CurrentIndex = 0;

  List<Widget>Screens=
  [

    HomePage(),
    ImageGeneration(),
    TextSimplification(),
    VideoConversion(),

  ];

  List<BottomNavigationBarItem>BottomNavItem=[
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,

        ),
      label: "Home",
    ),
    BottomNavigationBarItem(
        icon: Icon(
       Icons.image
        ),
      label: "Image"
          // "Generation",

    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.text_snippet),
      label: "Text"
          // "Simplification"
    ),
    BottomNavigationBarItem(
        icon:Icon(
          Icons.video_call,
        ),
      label: "Video"
          // "Conversion",
    ),

  ];

  void ChangeNavIndex(int index){

    CurrentIndex=index;
    emit(changeIndexStates());


  }




  // List<ListTile>tileContent =[
  //   ListTile(
  //     onTap: (){
  //
  //     },
  //     title: "HomePage",
  //
  //   )
  // ]






}