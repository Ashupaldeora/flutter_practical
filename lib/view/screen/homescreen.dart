import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practical/utils/colors.dart';
import 'package:flutter_practical/utils/productlist.dart';
import 'package:flutter_practical/utils/showproduct.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              AppBar(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/user-avatar-male-5.png',
                  ),
                ),
                title: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Hi, Jonathan\n",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: "Let's go shopping",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700))
                ])),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/search.png',
                        height: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/notification.png',
                        height: 30,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Home",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Text("Category",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500))
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 160,
                    margin: EdgeInsets.only(top: 40),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("24% off shipping today\n    on bag purchases",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade800)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("By kutuku store",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500)),
                          ],
                        ),
                        Container(
                          width: 90,
                          height: 180,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/banner.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 280,
                      top: 110,
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffc4c3ff),
                          ))),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => InkWell(
                          onTap: () {
                            setState(() {
                              click = index;
                            });
                          },
                          child: (click == index)
                              ? Container(
                                  margin: EdgeInsets.all(3),
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffc4c3ff)),
                                )
                              : Container(
                                  margin: EdgeInsets.all(3),
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade300),
                                ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arrivals🔥",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.1,
                          color: Colors.black)),
                  Text("See all",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: purple)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: List.generate(
                        product1.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  showproduct[0] = product1[index];
                                  Navigator.of(context).pushNamed('/product');
                                });
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                height: 270,
                                width: 175,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 175,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurStyle: BlurStyle.solid,
                                            color: Colors.grey,
                                            blurRadius: 5,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          product1[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(product1[index]['name'],
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                    Text('\$${product1[index]['price']}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade700)),
                                  ],
                                ),
                              ),
                            )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: List.generate(
                        product2.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  showproduct[0] = product2[index];
                                  Navigator.of(context).pushNamed('/product');
                                });
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                height: 270,
                                width: 175,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 175,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurStyle: BlurStyle.solid,
                                            color: Colors.grey,
                                            blurRadius: 5,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          product2[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(product2[index]['name'],
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                    Text('\$${product2[index]['price']}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey.shade700)),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

int click = 0;
