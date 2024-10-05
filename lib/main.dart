import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Builder Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridviewExtentPage(), // Updated to use the correct class
    );
  }
}

class GridviewExtentPage extends StatefulWidget {
  const GridviewExtentPage({super.key});

  @override
  State<GridviewExtentPage> createState() => _GridviewExtentPageState();
}

class _GridviewExtentPageState extends State<GridviewExtentPage> {
  List<String> listProduct = List<String>.generate(50, (index) => 'Product $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Extent',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.extent(
          maxCrossAxisExtent: 150.0,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          children: List.generate(50, (index) => Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                listProduct[index], // Use the generated list here
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
