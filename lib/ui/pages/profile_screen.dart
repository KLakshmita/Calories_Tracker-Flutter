import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:training_and_diet_app/model/meal.dart';
import 'package:training_and_diet_app/ui/pages/meal_detail_screen.dart';
import 'package:training_and_diet_app/ui/pages/workout_screen.dart';
import 'package:vector_math/vector_math_64.dart' as math;


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
   // final height = 1000;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();

    return Scaffold(
      
      backgroundColor: const Color(0xFF212121),
    
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 26,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
             BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.fastfood),
                padding: const EdgeInsets.only(top: 5.0),
              ),
              title: Text(
                "Meals",
                style: const TextStyle(color: Colors.pink),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Icon(Icons.home),
              ),
              title: Text(
                "Home",
                style: const TextStyle(color: Colors.pink),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.favorite),
                padding: const EdgeInsets.only(top: 5.0),
              ),
              title: Text(
                "BMI",
                style: const TextStyle(color: Colors.pink),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.person),
                padding: const EdgeInsets.only(top: 5.0),
              ),
              title: Text(
                "Profile",
                style: const TextStyle(color: Colors.pink),
              ),
            ),
           
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          /*Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 40, left: 32, right: 16, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        "Hello, David",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 26,
                          color: Colors.black,
                        ),
                      ),
                      trailing: ClipOval(child: Image.asset("assets/user.jpg")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        _RadialProgress(
                          width: width * 0.4,
                          height: width * 0.4,
                          progress: 0.7,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _IngredientProgress(
                              ingredient: "Protein",
                              progress: 0.3,
                              progressColor: Colors.green,
                              leftAmount: 72,
                              width: width * 0.28,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _IngredientProgress(
                              ingredient: "Carbs",
                              progress: 0.2,
                              progressColor: Colors.red,
                              leftAmount: 252,
                              width: width * 0.28,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _IngredientProgress(
                              ingredient: "Fat",
                              progress: 0.1,
                              progressColor: Colors.yellow,
                              leftAmount: 61,
                              width: width * 0.28,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),*/
Positioned(
            //top: height * 0.38,
            top: 50,//height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.31,
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      "SUGESTED MEALS WITH RECIPIES",
                      style: const TextStyle(color: Colors.lightBlueAccent, fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 32,
                          ),
                          for (int i = 0; i < meals.length; i++)
                            _MealCard(
                              meal: meals[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

Text("         SELECT THE MEALS YOU ATE TODAY", style: TextStyle(
                   // color: Theme.of(context).primaryColor,
                    //color: Color.,
                    color: Colors.lightBlueAccent,
                   // fontSize: 15,
                    //fontFamily: 'OpenSans',
                    //fontWeight: FontWeight.bold,
                    fontSize: 16, fontWeight: FontWeight.w700
                  ),
),

                

                  
                ],
              ),
            ),
          ),
          Positioned( 
             top: 350,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
             // color: Colors.blueGrey[900],
              child: Column(
            children: <Widget>[
              
              Expanded(
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      
                      transitionDuration: const Duration(milliseconds: 1000),
                      closedColor: const Color(0xFF212121),
                      openBuilder: (context, _) {
                        return WorkoutScreen();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 80, left: 32, right: 32),
                           //margin: const EdgeInsets.only(top: 10, bo),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  //const Color(0xFFBBDEFB),
                                  //const Color(0xFFBBDEFB),
                                  const Color(0xFFFFFFFF),
                                  const Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                                  child: Text(
                                    "Breakfast",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, left: 16),
                                  /*child: Text(
                                    "Upper Body",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),*/
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                       // height: 20,
                                        width: 10,
                                  
                                      ),
                                      SizedBox(
                                        width: 10,
                                        
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         );
                        },
                    ),
                  ),
            ]
              )

            )
          ),
Positioned( 
             top: 430,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
            children: <Widget>[
              Expanded(
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: const Duration(milliseconds: 1000),
                      closedColor: const Color(0xFF212121),
                     // backgroundColor: const Color(0xFF212121),
                      openBuilder: (context, _) {
                        return WorkoutScreen1();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 80, left: 32, right: 32),
                           //margin: const EdgeInsets.only(top: 10, bo),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                 // const Color(0xFFBBDEFB),
                                  //const Color(0xFFBBDEFB),
                                  const Color(0xFFFFFFFF),
                                  const Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                                  child: Text(
                                    "Morning Snacks",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, left: 16),
                                  /*child: Text(
                                    "Upper Body",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),*/
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                       // height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         );
                        },
                    ),
                  ),
            ]
              )

            )
          ),
          Positioned( 
             top: 510,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
            children: <Widget>[
              Expanded(
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: const Duration(milliseconds: 1000),
                      closedColor: const Color(0xFF212121),
                      openBuilder: (context, _) {
                        return WorkoutScreen2();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 80, left: 32, right: 32),
                           //margin: const EdgeInsets.only(top: 10, bo),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                //  const Color(0xFFBBDEFB),
                                 // const Color(0xFFBBDEFB),
                                 const Color(0xFFFFFFFF),
                                  const Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                                  child: Text(
                                    "Lunch",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, left: 16),
                                  /*child: Text(
                                    "Upper Body",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),*/
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                       // height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         );
                        },
                    ),
                  ),
            ]
              )

            )
          ),
          Positioned( 
             top: 590,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
            children: <Widget>[
              Expanded(
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: const Duration(milliseconds: 1000),
                      closedColor: const Color(0xFF212121),
                      openBuilder: (context, _) {
                        return WorkoutScreen3();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 80, left: 32, right: 32),
                           //margin: const EdgeInsets.only(top: 10, bo),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                 // const Color(0xFFBBDEFB),
                                  //const Color(0xFFBBDEFB),
                                  const Color(0xFFFFFFFF),
                                  const Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                                  child: Text(
                                    "Evening Snacks",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, left: 16),
                                  /*child: Text(
                                    "Upper Body",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),*/
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                       // height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         );
                        },
                    ),
                  ),
            ]
              )

            )
          ),
          Positioned( 
             top: 670,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
            children: <Widget>[
              Expanded(
                    child: OpenContainer(
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: const Duration(milliseconds: 1000),
                      closedColor: const Color(0xFF212121),
                      openBuilder: (context, _) {
                        return WorkoutScreen4();
                      },
                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 80, left: 32, right: 32),
                           //margin: const EdgeInsets.only(top: 10, bo),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                 // const Color(0xFFBBDEFB),
                                  //const Color(0xFFBBDEFB),
                                  const Color(0xFFFFFFFF),
                                  const Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                                  child: Text(
                                    "Dinner",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, left: 16),
                                  /*child: Text(
                                    "Upper Body",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),*/
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                       // height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         );
                        },
                    ),
                  ),
            ]
              )

            )
          )






        ],
      ),
    );
  }
}

class _IngredientProgress extends StatelessWidget {
  final String ingredient;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _IngredientProgress({Key key, this.ingredient, this.leftAmount, this.progress, this.progressColor, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text("${leftAmount}g left"),
          ],
        ),
      ],
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress({Key key, this.height, this.width, this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(
        progress: 0.7,
      ),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "1731",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF200087),
                  ),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "kcal left",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF200087),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF200087)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: OpenContainer(
                closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                transitionDuration: const Duration(milliseconds: 1000),
                openBuilder: (context, _) {
                  return MealDetailScreen(
                    meal: meal,
                  );
                },
                closedBuilder: (context, openContainer) {
                  return GestureDetector(
                    onTap: openContainer,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        meal.imagePath,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      meal.mealTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      meal.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${meal.kiloCaloriesBurnt} kcal",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${meal.timeTaken} min",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
