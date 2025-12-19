import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Dashbord.dart';
import 'auth/Loginpage.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({super.key});

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {

  final item = <Widget>[
    Icon(Icons.home),
    Icon(Icons.card_travel),
    Icon(Icons.point_of_sale),
    Icon(Icons.bar_chart),
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: const Text(
          "All Products",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // 🔍 Search Bar
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Search Products...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Icon(Icons.filter_alt),
              ],
            ),
          ),

          // 📦 Total Products
          Row(
            children: [
              Container(
                color: Colors.black26,
                child: Text(
                  "Total Products: 40",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          // 📋 Product List
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Row(
                    children: [
                      // 🖼 Product Image
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black26,
                        ),
                        child: const Icon(Icons.laptop, size: 35),
                      ),

                      const SizedBox(width: 10),

                      // 📄 Product Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            ListTile(
                              title: Text(
                                "Laptop",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                  "Stock:- 10",
                                  style: TextStyle(fontSize: 15)
                              ),
                            ),

                            SizedBox(height: 10),
                            Text(
                              "Low Stock",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 💰 Product Price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "₹ 45,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Column(
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                ),
                                onPressed: () {},
                                icon: const Icon(Icons.edit, size: 16,color: Colors.black,),
                                label: const Text("Edit",style: TextStyle(color: Colors.black),),
                              ),
                              const SizedBox(width: 5),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                ),
                                onPressed: () {},
                                icon: const Icon(Icons.delete, size: 16,color: Colors.black),
                                label: const Text("Delete",style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        height: 50,
        items: item,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.black26,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),

        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });

          switch (selectedIndex) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Dashbord()),
              );
              break;

            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Allproduct()),
              );
              break;

            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Loginpage()),
              );
              break;

            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Loginpage()),
              );
              break;
          }
        },
      ),
    );
  }
}