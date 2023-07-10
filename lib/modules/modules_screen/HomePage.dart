

import 'package:flutter/material.dart';
// \n to make new line

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Column(
            children: [
              Image.asset("assets/images/Home.png",
              height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                           borderRadius: BorderRadius.circular(20),
                           color: Color.fromRGBO(230 ,26, 26, 1),
                         ),
                         width: double.infinity,
                          height: 80,
                         child: Column(
                           children:[
                             SizedBox(height: 5,),
                             Text("IMAGE",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                             ),
                             ),
                             SizedBox(height: 5,),
                             Text("Make an image ",
                             style: TextStyle(
                               fontSize: 10,
                                fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),
                             ),
                             Text("of your text",
                               style: TextStyle(
                                 fontSize: 10,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),


                           ]
                         ),
                       ),
                     ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(230 ,26, 26, 1),
                          ),
                          width: double.infinity,
                          height: 80,
                          child: Column(
                              children:[
                                SizedBox(height: 5,),
                                Text("TEXT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Simplify your text ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(" by another text",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),


                              ]
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          
                          decoration: BoxDecoration(
                            
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(230 ,26, 26, 1),
                          ),
                          width: double.infinity,
                          height: 80,
                          child: Column(
                              children:[
                                SizedBox(height: 5,),
                                Text("VIDEO",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text("Exchange your video ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(" by a video with ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                 Text(" another character",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/About.png",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                ),
                child: Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 45,
          vertical: 15,
          ),
            child: Text(r"We are a team of five people working to develop the best products to help our customers build their presentations effectively. Our goal at a buffer has always been to do things a little differently.Since our beginnings, we have strived to create the most unique systems possible."),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/Contacts.png",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                ),
                child: Center(
                  child: Text(
                    "Contacts Us",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,

             children: [
               Expanded(
                 child: Column(
                   children: [
                     Icon( Icons.place,
                       size: 40,
                      color: Color.fromRGBO(230 ,26, 26, 1),
                     ),
                     SizedBox(height: 5,),
                     Text("Address: ",
                       style: TextStyle(
                         color: Color.fromRGBO(230 ,26, 26, 1),
                         fontSize: 12,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     SizedBox(height: 5,),
                     Text(" 7 Memorizers  \n\t\t\t\t Buildings,\n\t\t\t 90th Street,",
                     style: TextStyle(
                       fontSize: 11,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                     Text("Fifth Settlement,",
                       style: TextStyle(
                         fontSize: 11,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text("New Cairo, Egypt",
                       style: TextStyle(
                         fontSize: 11,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 20,),

               Expanded(
                 child: Column(
                   children: [
                     Icon( Icons.phone,
                       size: 40,
                       color: Color.fromRGBO(230 ,26, 26, 1),
                     ),
                     SizedBox(height: 5,),
                     Text(" Phone:",
                       style: TextStyle(
                         color: Color.fromRGBO(230 ,26, 26, 1),
                         fontSize: 11,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     SizedBox(height: 5,),

                     Text("Hotline: 1111111",
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text("Number: ",
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text("+02 111 256 1721 ",
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ],
                 ),
               ),

               SizedBox(height: 20,),

               Expanded(
                 child: Column(
                   children: [
                     Icon( Icons.email,
                       size: 40,
                       color: Color.fromRGBO(230 ,26, 26, 1),
                     ),
                     SizedBox(height: 5,),
                     Text("Email: ",
                       style: TextStyle(
                         color: Color.fromRGBO(230 ,26, 26, 1),
                         fontSize: 11,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     SizedBox(height: 5,),

                     Text("MemorizersGroup",
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text("@gmail.com",
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.bold,
                       ),
                     ),

                   ],
                 ),
               ),
             ],
            ),
          ),
        ],
      ),
    );
  }
}
