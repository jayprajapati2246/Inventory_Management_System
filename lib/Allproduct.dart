import 'package:flutter/material.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({super.key});

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: Text(
          "All Product",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //search
          Container(
            height: 40,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black, size: 27),
                SizedBox(width: 20),
                Text("Search Products..."),
                SizedBox(width: 80),
                Container(
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.black87,
                    size: 27,
                  ),
                ),
              ],
            ),
          ),
          //show all products listview.builder
          SizedBox(
            height: 30,
            child: Text(
              "Total Products :- 50",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ListTile(title: Text("Laptop")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
