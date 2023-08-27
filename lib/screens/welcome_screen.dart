import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_shop/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 211, 173),
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
            //opacity: 0.6,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 170),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Coffee Shop",
                  style: GoogleFonts.pacifico(
                    fontSize: 40,
                    color: Color.fromARGB(231, 61, 40, 5),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 1),
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 1),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello!",
                  style: GoogleFonts.pacifico(
                    fontSize: 15,
                    color: Color.fromARGB(231, 61, 40, 5).withOpacity(0.7),
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 300),
            Material(
              color: Color.fromARGB(231, 61, 40, 5),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.push(
                      BuildContext,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Ink(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(231, 61, 40, 5),
                    ),
                    child: Text(
                      "Start",
                      style: GoogleFonts.pacifico(
                        fontSize: 20,
                        color: Color.fromARGB(255, 240, 211, 173),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
