import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:training_and_diet_app/model/breakfast.dart';
import 'package:training_and_diet_app/model/upper_body_workout.dart';
import 'package:training_and_diet_app/model/dinner.dart';
import 'package:training_and_diet_app/model/morning_snacks.dart';
import 'package:training_and_diet_app/model/lunch.dart';
import 'package:training_and_diet_app/model/evening_snacks.dart';
import 'package:flutter/cupertino.dart';

class WorkoutScreen extends StatelessWidget {
   @override
  //_BreakfastState createState() => _BreakfastState();
  
  
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    int _currentValue = 1;
    
    return Scaffold(
     // backgroundColor: const Color(0xFFBBDEFB),
    // backgroundColor: const Color(0xFF263238),
    
    backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                   // color: Colors.cyanAccent[400],
                   color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                
                subtitle: Text(
                  "Breakfast",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      
                       // Icon(
                         // Icons.access_time,
                          //color: Colors.white30,
                        //),                        
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"60 mins",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon(
                          //Icons.shutter_speed,
                         // color: Colors.white30,
                        //),
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"Easy",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                       // )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0; i < upperBody.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody[i].length; j++)
                      ListTile(
                       // leading: Icon(Icons.play_arrow,),
 
                        trailing:Wrap(
                             spacing: 35, // space between two icons
                                    children: <Widget>[
                                   //   upperBody[i][j].icon,
                              //   Icon(Icons.add_circle_outline,color: Colors.white, size: 33.0,), // icon-1
                             //    Icon(Icons.remove_circle_outline,color: Colors.white, size: 33.0,), // icon-2
                                 
                            //    new NumberPicker.integer(
                            //     initialValue: _currentValue,
                            //            minValue: 0,
                            //               maxValue: 100,
                            //          onChanged: (newValue) =>
                            //           setState(() => _currentValue = newValue),
                            //     ),
                            
                                 
                                 
                                 
                                 
                                 
                                   ],
                                 ),
                               //  trailing: Icon(
                              //     upperBody[i][j].icon1,
                              //   ),








//                       Container(
                   //       decoration: BoxDecoration(
                     //       borderRadius: BorderRadius.all(Radius.circular(20)),
                        //    color: const Color(0xFF5B4D9D),
                     //     ),
                       //   padding: const EdgeInsets.all(6),
//                          child: Icon(
                            //upperBody[i][j].imagePath,
                         //  upperBody[i][j].icon,
                          //  width: 45,
                          //  height: 45,
//                           Icons.add_circle_outline,
                         //  Icon.add,
                          // Icons.minus
//      color: Colors.white,
//      size: 30.0,
                  //          color: Colors.white,
//                          ),
                          

//                        ),

                        title: Text(
                          upperBody[i][j].name,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkoutScreen1 extends StatelessWidget {
   @override
  //_BreakfastState createState() => _BreakfastState();
  
  
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    int _currentValue = 1;
    
    return Scaffold(
     // backgroundColor: const Color(0xFFBBDEFB),
    // backgroundColor: const Color(0xFF263238),
    
    backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                   // color: Colors.cyanAccent[400],
                   color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                
                subtitle: Text(
                  " Morning Snacks",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      
                       // Icon(
                         // Icons.access_time,
                          //color: Colors.white30,
                        //),                        
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"60 mins",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon(
                          //Icons.shutter_speed,
                         // color: Colors.white30,
                        //),
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"Easy",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                       // )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0; i < upperBody1.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody1[i].length; j++)
                      ListTile(
                       // leading: Icon(Icons.play_arrow,),
 
                        trailing:Wrap(
                             spacing: 35, // space between two icons
                                    children: <Widget>[
                                   //   upperBody[i][j].icon,
                              //   Icon(Icons.add_circle_outline,color: Colors.white, size: 33.0,), // icon-1
                             //    Icon(Icons.remove_circle_outline,color: Colors.white, size: 33.0,), // icon-2
                                 
                            //    new NumberPicker.integer(
                            //     initialValue: _currentValue,
                            //            minValue: 0,
                            //               maxValue: 100,
                            //          onChanged: (newValue) =>
                            //           setState(() => _currentValue = newValue),
                            //     ),
                            
                                 
                                 
                                 
                                 
                                 
                                   ],
                                 ),
                               //  trailing: Icon(
                              //     upperBody[i][j].icon1,
                              //   ),








//                       Container(
                   //       decoration: BoxDecoration(
                     //       borderRadius: BorderRadius.all(Radius.circular(20)),
                        //    color: const Color(0xFF5B4D9D),
                     //     ),
                       //   padding: const EdgeInsets.all(6),
//                          child: Icon(
                            //upperBody[i][j].imagePath,
                         //  upperBody[i][j].icon,
                          //  width: 45,
                          //  height: 45,
//                           Icons.add_circle_outline,
                         //  Icon.add,
                          // Icons.minus
//      color: Colors.white,
//      size: 30.0,
                  //          color: Colors.white,
//                          ),
                          

//                        ),

                        title: Text(
                          upperBody1[i][j].name,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody1[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkoutScreen2 extends StatelessWidget {
   @override
  //_BreakfastState createState() => _BreakfastState();
  
  
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    int _currentValue = 1;
    
    return Scaffold(
     // backgroundColor: const Color(0xFFBBDEFB),
    // backgroundColor: const Color(0xFF263238),
    
    backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                   // color: Colors.cyanAccent[400],
                   color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                
                subtitle: Text(
                  "Lunch",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      
                       // Icon(
                         // Icons.access_time,
                          //color: Colors.white30,
                        //),                        
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"60 mins",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon(
                          //Icons.shutter_speed,
                         // color: Colors.white30,
                        //),
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"Easy",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                       // )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0; i < upperBody2.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody2[i].length; j++)
                      ListTile(
                       // leading: Icon(Icons.play_arrow,),
 
                        trailing:Wrap(
                             spacing: 35, // space between two icons
                                    children: <Widget>[
                                   //   upperBody[i][j].icon,
                              //   Icon(Icons.add_circle_outline,color: Colors.white, size: 33.0,), // icon-1
                             //    Icon(Icons.remove_circle_outline,color: Colors.white, size: 33.0,), // icon-2
                                 
                            //    new NumberPicker.integer(
                            //     initialValue: _currentValue,
                            //            minValue: 0,
                            //               maxValue: 100,
                            //          onChanged: (newValue) =>
                            //           setState(() => _currentValue = newValue),
                            //     ),
                            
                                 
                                 
                                 
                                 
                                 
                                   ],
                                 ),
                               //  trailing: Icon(
                              //     upperBody[i][j].icon1,
                              //   ),








//                       Container(
                   //       decoration: BoxDecoration(
                     //       borderRadius: BorderRadius.all(Radius.circular(20)),
                        //    color: const Color(0xFF5B4D9D),
                     //     ),
                       //   padding: const EdgeInsets.all(6),
//                          child: Icon(
                            //upperBody[i][j].imagePath,
                         //  upperBody[i][j].icon,
                          //  width: 45,
                          //  height: 45,
//                           Icons.add_circle_outline,
                         //  Icon.add,
                          // Icons.minus
//      color: Colors.white,
//      size: 30.0,
                  //          color: Colors.white,
//                          ),
                          

//                        ),

                        title: Text(
                          upperBody2[i][j].name,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody2[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkoutScreen3 extends StatelessWidget {
   @override
  //_BreakfastState createState() => _BreakfastState();
  
  
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    int _currentValue = 1;
    
    return Scaffold(
     // backgroundColor: const Color(0xFFBBDEFB),
    // backgroundColor: const Color(0xFF263238),
    
    backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                   // color: Colors.cyanAccent[400],
                   color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                
                subtitle: Text(
                  "Evening Snacks",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      
                       // Icon(
                         // Icons.access_time,
                          //color: Colors.white30,
                        //),                        
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"60 mins",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon(
                          //Icons.shutter_speed,
                         // color: Colors.white30,
                        //),
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"Easy",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                       // )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0; i < upperBody3.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody3[i].length; j++)
                      ListTile(
                       // leading: Icon(Icons.play_arrow,),
 
                        trailing:Wrap(
                             spacing: 35, // space between two icons
                                    children: <Widget>[
                                   //   upperBody[i][j].icon,
                              //   Icon(Icons.add_circle_outline,color: Colors.white, size: 33.0,), // icon-1
                             //    Icon(Icons.remove_circle_outline,color: Colors.white, size: 33.0,), // icon-2
                                 
                            //    new NumberPicker.integer(
                            //     initialValue: _currentValue,
                            //            minValue: 0,
                            //               maxValue: 100,
                            //          onChanged: (newValue) =>
                            //           setState(() => _currentValue = newValue),
                            //     ),
                            
                                 
                                 
                                 
                                 
                                 
                                   ],
                                 ),
                               //  trailing: Icon(
                              //     upperBody[i][j].icon1,
                              //   ),








//                       Container(
                   //       decoration: BoxDecoration(
                     //       borderRadius: BorderRadius.all(Radius.circular(20)),
                        //    color: const Color(0xFF5B4D9D),
                     //     ),
                       //   padding: const EdgeInsets.all(6),
//                          child: Icon(
                            //upperBody[i][j].imagePath,
                         //  upperBody[i][j].icon,
                          //  width: 45,
                          //  height: 45,
//                           Icons.add_circle_outline,
                         //  Icon.add,
                          // Icons.minus
//      color: Colors.white,
//      size: 30.0,
                  //          color: Colors.white,
//                          ),
                          

//                        ),

                        title: Text(
                          upperBody3[i][j].name,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody3[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}



class WorkoutScreen4 extends StatelessWidget {
   @override
  //_BreakfastState createState() => _BreakfastState();
  
  
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    int _currentValue = 1;
    
    return Scaffold(
     // backgroundColor: const Color(0xFFBBDEFB),
    // backgroundColor: const Color(0xFF263238),
    
    backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                  icon: Icon(
                    Icons.fastfood,
                   // color: Colors.cyanAccent[400],
                   color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                
                subtitle: Text(
                  "Dinner",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                trailing: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      
                       // Icon(
                         // Icons.access_time,
                          //color: Colors.white30,
                        //),                        
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"60 mins",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon(
                          //Icons.shutter_speed,
                         // color: Colors.white30,
                        //),
                        SizedBox(
                          width: 5,
                        ),
                        //Text(
                          //"Easy",
                          //style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600, fontSize: 16),
                       // )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0; i < upperBody4.length; i++)
                Column(
                  children: <Widget>[
                    for (int j = 0; j < upperBody4[i].length; j++)
                      ListTile(
                       // leading: Icon(Icons.play_arrow,),
 
                        trailing:Wrap(
                             spacing: 35, // space between two icons
                                    children: <Widget>[
                                   //   upperBody[i][j].icon,
                              //   Icon(Icons.add_circle_outline,color: Colors.white, size: 33.0,), // icon-1
                             //    Icon(Icons.remove_circle_outline,color: Colors.white, size: 33.0,), // icon-2
                                 
                            //    new NumberPicker.integer(
                            //     initialValue: _currentValue,
                            //            minValue: 0,
                            //               maxValue: 100,
                            //          onChanged: (newValue) =>
                            //           setState(() => _currentValue = newValue),
                            //     ),
                            
                                 
                                 
                                 
                                 
                                 
                                   ],
                                 ),
                               //  trailing: Icon(
                              //     upperBody[i][j].icon1,
                              //   ),








//                       Container(
                   //       decoration: BoxDecoration(
                     //       borderRadius: BorderRadius.all(Radius.circular(20)),
                        //    color: const Color(0xFF5B4D9D),
                     //     ),
                       //   padding: const EdgeInsets.all(6),
//                          child: Icon(
                            //upperBody[i][j].imagePath,
                         //  upperBody[i][j].icon,
                          //  width: 45,
                          //  height: 45,
//                           Icons.add_circle_outline,
                         //  Icon.add,
                          // Icons.minus
//      color: Colors.white,
//      size: 30.0,
                  //          color: Colors.white,
//                          ),
                          

//                        ),

                        title: Text(
                          upperBody4[i][j].name,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          upperBody4[i][j].instruction,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                
                      ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
