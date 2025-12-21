import 'package:flutter/material.dart';

class salseentry extends StatefulWidget {
  const salseentry({super.key});

  @override
  State<salseentry> createState() => _salseentryState();
}

class _salseentryState extends State<salseentry> {
  var searchproduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        title: const Text(
          'Sales Entry',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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

      // ✅ BODY WITH SINGLECHILDSCROLLVIEW
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              const Text(
                "Sales Detail",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: const [
                    Icon(Icons.calendar_month, size: 30),
                    SizedBox(width: 8),
                    Text(
                      "Date :-",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: searchproduct,
                  decoration: const InputDecoration(
                    hintText: "Search products...",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Add Products",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26,
                          ),
                          child: const Icon(Icons.laptop, size: 35),
                        ),

                        const SizedBox(width: 10),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Laptop",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Stock :- 10"),
                              Text(
                                "Low Stock",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "₹ 45,000",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              label: const Text(
                                "Add",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.white60,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.black12,
                          child: Text("Product"),
                        ),
                        SizedBox(height: 10),
                        Icon(Icons.eighteen_mp),
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      children: [
                        Container(color: Colors.black12, child: Text("Price")),
                        SizedBox(height: 10),
                        Icon(Icons.eighteen_mp),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(color: Colors.black12, child: Text("Qty")),
                        SizedBox(height: 10),
                        Icon(Icons.eighteen_mp),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(color: Colors.black12, child: Text("Total")),
                        SizedBox(height: 10),
                        Icon(Icons.eighteen_mp),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
