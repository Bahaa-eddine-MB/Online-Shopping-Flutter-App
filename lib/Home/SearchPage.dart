import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Home/HomePage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:    Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
          
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(child: Text("search for something")),
    );
  }
}
