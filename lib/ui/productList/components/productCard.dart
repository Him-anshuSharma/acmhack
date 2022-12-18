import 'package:flutter/material.dart';
import 'package:untitled/ui/checkoutPage/checkout_page.dart';
import 'package:untitled/ui/detail/detail.dart';

import '../../../model/productListModel/product.dart';

class ProductCard extends StatelessWidget {
  Product product;

  ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, DetailScreen.id);
        },
        child: Card(

          color: const Color(0xffcffff),
          margin: const EdgeInsets.all(10),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  fit: BoxFit.fitHeight,
                  product.image,
                  height: 150.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          product.description,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    //const Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Text(
                          "\$ ${product.price}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, CheckoutPage.id);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor:
                              const Color(0xFF967A76), // Background Color
                            ),
                            child: const Text(
                              'BUY',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
