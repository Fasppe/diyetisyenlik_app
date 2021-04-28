import 'dart:ui';

//bunlar diğer classlardaki sabitleri görmemi sağlıyor.
import 'package:diyet_app/fitness_screen.dart';
import 'package:diyet_app/meal_aciklama_screen.dart';
import 'package:flutter/material.dart';
//intl kütüphanesi anlık gün ay yıl almanı sağlıyor
import 'package:intl/intl.dart';
//vektorel işlem yapmanı sağlıyor aşşağıda ilerle çubuğu yaparken lazım oldu.
import 'package:vector_math/vector_math_64.dart' as math;

//import 'file:///C:/Users/Enes/AndroidStudioProjects/diyet_app/lib/meal_orta_yer/meal_aciklama_screen.dart';

import 'meal.dart';

class ProfileScreen extends StatefulWidget {
  final username;

  const ProfileScreen({Key key, @required this.username}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final today = DateTime.now();
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        //navigasyon barı ileride buranın içine de ekran ekliceğim.
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: Colors.lightGreenAccent,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black26,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Arama',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.38,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    top: 50,
                    left: 23,
                    right: 16,
                    bottom: 16), //diğer alt şeyler //sığmazsa küçült
                child: Padding(
                  //gerekirse bu widgeti sil
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          //"Gün, Yıl",
                          '${DateFormat("EEEE").format(today)}-${DateFormat("d MMMM").format(today)}',

                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text(
                          widget.username == null
                              ? "Kullanıcı yok"
                              : widget.username,
                          //"Merhaba, Enes",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        trailing: ClipOval(
                          child: Image.asset("assets/images/user.jpg"),
                        ),
                      ),
                      _RadialProgress(
                        width: height * 0.18,
                        height: height * 0.18,
                        progress: 0.66,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      "Bugünün Yemekleri",
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
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
                  //   Expanded(
                  //   child: Container(
                  //   color: Colors.red,
                  // ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      //fitness ekranına geçme yeri
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => FitnessScreen()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          bottom: 10,
                          left: 32,
                          right: 32,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFFC40229),
                              const Color(0xFFC20325),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, left: 16),
                              child: Text(
                                "BUGUNÜN EGZERSİZLERİ",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, left: 16),
                              child: Text(
                                "Üst Vucut",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/images/chest.png",
                                      color: Colors.orange[200],
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      color: const Color(0xFF8B3C3E),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/images/back.png",
                                      color: Colors.orange[200],
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      color: const Color(0xFF8B3C3E),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/images/biceps.png",
                                      color: Colors.orange[200],
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      color: const Color(0xFF8B3C3E),
                                    ),
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Yuvarlak ilerleme çubuğu
class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress({Key key, this.height, this.width, this.progress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(
        progress: 0.66,
      ),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "1542",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF200087),
                  ),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "kcal kaldı",
                  style: TextStyle(
                    fontSize: 14,
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
      //..style = PaintingStyle.fill
      ..style = PaintingStyle.stroke //içi boş yuvarlak yapma
      ..strokeCap = StrokeCap.round;
    Offset center = Offset(size.width / 2, size.height / 2);
    // canvas.drawCircle(center, size.width / 2, paint);
    //yukarıdaki tam yuvarlak yapma yolu ama aşşağıdaki istediğim şekilde sanki dolma barı yapmak için

    double relativeProgress = 360 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),

      math.radians(-relativeProgress),
      false, //merkezden çizgi çizmesini sağlıyor true olursa
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Bugünün yemekleri
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
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MealAciklamaScreen(
                meal: meal,
              ),
            ),
          );
        },
        child: Material(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Image.asset(
                    meal.imagePath,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
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
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        meal.kalorisi,
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
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            meal.timeTaken,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
