import 'package:flutter/material.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({super.key});

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  var search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Product',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assates/image/images.png"),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          //Search Bar
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              controller: search,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              decoration: InputDecoration(
                hintText: "Search products...",
                hintStyle: const TextStyle(color: Colors.black),
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            color: Colors.black87,
            child: const Text(
              "Total Products: 40",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          //Product List
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
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
                                style: TextStyle(fontSize: 15),
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
                                icon: const Icon(
                                  Icons.edit,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.black),
                                ),
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
                                icon: const Icon(
                                  Icons.delete,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.black),
                                ),
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
    );
  }
}
