import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleSpacing: 20,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Inventory Pro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            Text(
              'Dashboard',
              style: TextStyle(color: Colors.white, fontSize: 15, height: 1.5),
            ),
            SizedBox(height: 15),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage("assates/image/images.png"),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(color: Colors.blueAccent,);
          },
        ),

      ),
    );
  }
}
