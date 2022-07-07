import 'package:app_nike_shoe_store/widgets/HomeBottomNavBar.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:app_nike_shoe_store/widgets/RowItemsWidget.dart';
import 'package:app_nike_shoe_store/widgets/AllItemsWidget.dart';

var _couleurInput = Color.fromARGB(255, 247, 248, 245);
var _couleurBoxShow = Color(0xFF475269);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Scroller l'écran
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Bar personnelle
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: _couleurBoxShow.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.sort,
                          size: 30,
                          color: _couleurBoxShow,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: _couleurBoxShow.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Badge(
                          badgeColor: Colors.redAccent,
                          padding: EdgeInsets.all(7),
                          badgeContent: Text(
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                            color: _couleurBoxShow,
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              // Barre de reecherche
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: _couleurBoxShow.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Recherche",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 27,
                      color: _couleurBoxShow,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // Scroll vertical
              RowItemsWidget(),
              SizedBox(
                height: 20,
              ),
              AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
