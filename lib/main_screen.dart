import 'package:course_testing/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(
        BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        designSize: const Size(360, 580),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            ClipOval(
              child: Container(
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple[700]!, Colors.orangeAccent]),
                ),
              ),
              clipper: Clipper(),
            ),
            ClipOval(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple[700]!, Colors.orangeAccent]),
                ),
              ),
              clipper: Clipperr(),
            ),
            Container(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: LoginForm(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        child: RaisedButton(


                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                            child:

                          Text(
                            "sign in",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Theme.of(context).primaryColor ,

                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?"),
                      Text(
                        "sign up",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )
                    ],
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
            )
          ],
        ));
  }
}

class Clipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(-50.w, -100.h, 230.w, 150.h);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class Clipperr extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(180.w, -100.h, 400.w, 80.h);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
