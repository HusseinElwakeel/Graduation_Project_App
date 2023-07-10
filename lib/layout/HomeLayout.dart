
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/cubit/states.dart';
import 'package:graduation/modules/modules_screen/NavigationDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>GraduationCubit(),

      child: BlocConsumer<GraduationCubit,GraduationStates>(
        listener:(context,state){},

        builder: (context,state){
          GraduationCubit cubit = GraduationCubit.get(context);
          return Scaffold(
          appBar: AppBar(
            //to appear the logo in first thing in app bar and use padding to make space between logo and title and resize it
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/logo.png",
              width: 20,
                 height: 20,
                fit: BoxFit.fill,
              ),
            ),
            titleSpacing: 10,
          title: Text("Memorizers",
    // textAlign: TextAlign.center,

    style: TextStyle(
      fontFamily: "Algerian Regular",
    fontSize: 23,
    fontWeight: FontWeight.bold,

    ),
    ),

    ),

            bottomNavigationBar: BottomNavigationBar(
              items: cubit.BottomNavItem,
              onTap: (int index){
                cubit.ChangeNavIndex(index);
              },
              currentIndex: cubit.CurrentIndex,

       ),
            body: cubit.Screens[cubit.CurrentIndex],

            //create drawer :

            // drawer: NavigationDrawerWidget(),



    );
    },
      ),
    );
  }
}

