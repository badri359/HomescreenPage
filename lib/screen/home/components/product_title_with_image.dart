import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';

class ProductTitleWithimage extends StatelessWidget {
  const ProductTitleWithimage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.category,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40, bottom: 20),
              child: Text(product.title,
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: product.price,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ])),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Image.asset(
                    product.filler,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            )
          ]),
    );
  }
}
