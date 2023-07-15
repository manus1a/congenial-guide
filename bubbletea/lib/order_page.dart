import 'package:bubbletea/shop.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'drink.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
    required this.drink,
  });
  final Drink drink;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double manisValue = 0.5;

  void customizeManis(double newValue) {
    setState(() {
      manisValue = newValue;
    });
  }

  double susuValue = 0.5;

  void customizeSusu(double newValue) {
    setState(() {
      susuValue = newValue;
    });
  }

  double esValue = 0.5;

  void customizeEs(double newValue) {
    setState(() {
      esValue = newValue;
    });
  }

  void addToCart() {
    Provider.of<Shop>(context, listen: false).addToCart(widget.drink);

    Navigator.pop(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to Cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        // Wrap the Column with a SingleChildScrollView
        child: Column(
          children: [
            Image.asset(widget.drink.imagePath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Manis",
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: manisValue,
                          label: manisValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeManis(value),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text("susu"),
                        width: 100,
                      ),
                      Expanded(
                        child: Slider(
                          value: susuValue,
                          label: susuValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeSusu(value),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text("Es"),
                        width: 100,
                      ),
                      Expanded(
                        child: Slider(
                          value: esValue,
                          label: esValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeEs(value),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    16), // Add a SizedBox to create space between the sliders and the button
            MaterialButton(
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: addToCart,
              color: Colors.brown,
            ),
            SizedBox(
                height: 16), // Add a SizedBox to create space at the bottom
          ],
        ),
      ),
    );
  }
}
