import 'package:flutter/material.dart';
import 'package:growcery_app/data.dart';
import 'package:growcery_app/item_widget.dart';

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
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
