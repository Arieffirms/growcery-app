import 'package:flutter/material.dart';
import 'package:growcery_app/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product(
    'Bayam',
    '2.000',
    '1likat',
    'assets/img1.png',
    'bayam adalah sayuran yang kaya fitamin',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.green,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Center(
          child: Text(
            "Tokoh Buah & Sayur",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          children: [
            Card(
              color: Colors.white,
              elevation: 2,
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: data.image,
                    child: SizedBox(
                      width: 150,
                      child: Image.asset(data.image),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Rp ${data.price}",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    data.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    data.quantity,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            size: 20,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Beli",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_circle_outline,
                            size: 18,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("0"),
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            size: 18,
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}
