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

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

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
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
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

              //search bar
              Container(
                margin: const EdgeInsets.all(10),

                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(25),
                ),

                child: TextField(
                  controller: searchproduct,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Search products...",
                    hintStyle: const TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search, color: Colors.black,fontWeight: FontWeight.bold,),
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



              const Text(
                "Add Products",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),


              //product list and add
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(width: 1, color: Colors.black),
                ),
              child: ListView.builder(
                itemCount: 3,
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
              ),

              SizedBox(height: 10),

              // oder total
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(width: 1, color: Colors.black),
                ),

                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(child: Text("Product")),
                        SizedBox(height: 10),
                        Icon(Icons.laptop),
                      ],
                    ),
                    SizedBox(width: 19),
                    Column(
                      children: [
                        Container(child: Text("Price")),
                        SizedBox(height: 10),
                        Text("₹ 45,000"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(child: Text("Qty")),
                        SizedBox(height: 10),
                        Text("2"),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Container(child: Text("Total")),
                        SizedBox(height: 10),
                        Text("₹ 90,000"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete, color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(left: 7),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Order Summary",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              //oder summary
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("Sub Total :- "),
                              SizedBox(width: 140),
                              Text("₹ 90,000"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("Discount :- "),
                              SizedBox(width: 170),
                              Text("10%"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("Total Amount :- "),
                              SizedBox(width: 110),
                              Text("₹ 81,000"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
