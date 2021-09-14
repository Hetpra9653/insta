import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                          colors: [
                        Color(0xffC6FFDD),
                        Color(0xffFBD786),
                        Color(0xfff7797d),
                        // Color(0xff),
                        // Color(0xff),
                      ])),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 60.0),
                child: Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 65,
                      fontFamily: GoogleFonts.alexBrush().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  "To your account",
                  style: TextStyle(color: Colors.lightBlue, fontSize: 30.0),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: 100.0, right: 25.0, left: 25.0, bottom: 10.0),
              child: textformdec),
          Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: textformdec2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.network("https://pngtree.com/so/instagram"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

//box decoration
final textformdec = TextFormField(
  decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    prefixIcon: Icon(
      Icons.person,
      color: Colors.red.shade200,
    ),
    filled: true,
    fillColor: Colors.red.shade50,
    labelText: "Username",
    labelStyle: TextStyle(color: Colors.red),
  ),
);

final textformdec2 = TextFormField(
  obscureText: true,
  decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
      ),
    ),
    prefixIcon: Icon(
      Icons.person,
      color: Colors.blue.shade200,
    ),
    filled: true,
    fillColor: Colors.blue.shade50,
    labelText: "Password",
    labelStyle: TextStyle(color: Colors.blue),
  ),
);
