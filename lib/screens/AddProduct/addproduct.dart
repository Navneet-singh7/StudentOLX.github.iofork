/*
Add Product Page:
  1. blue color "Enter Product Details" container
  2. Enter Product name
  3. Enter Product category
  4. Enter Selling Price
  5. Enter Time of being used
  6. Product Description
  7. Quantity Available for selling
  8. Payment Method:
      - Cash on Delivery - Paytm - Gpay

*/
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.isDarkMode == false
            ? const Color.fromARGB(255, 255, 255, 255)
            : const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: Center(
            child: Text(
          "Add Product",
          style: TextStyle(
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        )),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
