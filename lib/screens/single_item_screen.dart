import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 221, 194),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(231, 41, 27, 3),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "images/$img.png",
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: TextStyle(
                          color: Color.fromARGB(231, 41, 27, 3),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Color.fromARGB(231, 41, 27, 3),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(231, 41, 27, 3),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Color.fromARGB(231, 41, 27, 3),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Color.fromARGB(231, 41, 27, 3),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Color.fromARGB(231, 41, 27, 3),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "\$30.20",
                              style: TextStyle(
                                color: Color.fromARGB(231, 41, 27, 3),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Coffe is a major source of antioxidants in the diet. it has many health benefits",
                        style: GoogleFonts.pacifico(
                          color: Color.fromARGB(231, 41, 27, 3),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Volume: ",
                            style: TextStyle(
                              color: Color.fromARGB(231, 41, 27, 3),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "60 ml ",
                            style: TextStyle(
                              color: Color.fromARGB(231, 41, 27, 3),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(231, 41, 27, 3),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                "Add to Cart",
                                style: GoogleFonts.pacifico(
                                  color: Color.fromARGB(255, 243, 221, 194),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(231, 41, 27, 3),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Color.fromARGB(255, 243, 221, 194),
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
          ),
        ),
      ),
    );
  }
}
