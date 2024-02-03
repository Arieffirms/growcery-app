import 'package:flutter/material.dart';
import 'package:growcery_app/data.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
          ),
          Center(
            child: Hero(
              tag: product.image,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.contain)),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Rp. ${product.price}",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
                Text(
                  " / ${product.quantity}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Text(
                product.description,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
