import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practical/utils/cartlist.dart';
import 'package:google_fonts/google_fonts.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        Navigator.of(context).pop();
                      });
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
                    onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
              ],
            ),
            Column(
              children: List.generate(
                  cart.length,
                  (index) => Container(
                        height: 120,
                        padding: EdgeInsets.all(10),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.6, color: Colors.black))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    blurStyle: BlurStyle.solid,
                                    color: Colors.grey,
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  cart[index]['image'],
                                  fit: BoxFit.cover,
                                  height: double.maxFinite,
                                  width: double.maxFinite,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cart[index]['name'],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (cart[index]['quantity'] > 1) {
                                                cart[index]['quantity']--;
                                              } else {
                                                cart.removeAt(index);
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.remove)),
                                      Text(
                                        "${cart[index]['quantity']}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              cart[index]['quantity']++;
                                            });
                                          },
                                          icon: Icon(Icons.add)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "${cart[index]['price']}",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ],
                        ),
                      )),
            ),
            Container(
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
