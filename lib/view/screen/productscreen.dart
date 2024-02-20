import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practical/utils/cartlist.dart';
import 'package:flutter_practical/utils/showproduct.dart';
import 'package:google_fonts/google_fonts.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Column(
              children: [
                AppBar(
                  leading: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  title: Text(
                    "Product details",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushNamed('/cart');
                          });
                        },
                        icon: Icon(Icons.shopping_bag_outlined)),
                  ],
                ),
                Container(
                  height: 400,
                  alignment: Alignment.center,
                  color: Color(0xffe8e1e9),
                  child: Image.asset(
                    showproduct[0]['image'],
                    fit: BoxFit.cover,
                    height: double.maxFinite,
                    width: double.maxFinite,
                  ),
                ),
                Container(
                  height: 390,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              showproduct[0]['name'],
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (showproduct[0]['quantity'] > 1) {
                                            showproduct[0]['quantity']--;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove)),
                                  Text(
                                    "${showproduct[0]['quantity']}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showproduct[0]['quantity']++;
                                      },
                                      icon: Icon(Icons.add)),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          "description",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          showproduct[0]['description'],
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${showproduct[0]['price']}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  cart.add(showproduct[0]);
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 200,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(50),
                                        right: Radius.circular(50))),
                                child: Text(
                                  "add to cart",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
