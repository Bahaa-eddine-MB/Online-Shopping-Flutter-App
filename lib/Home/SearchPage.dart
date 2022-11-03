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
        title: Container(
          height: 40,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextField(
            decoration: InputDecoration(
              hintText: "SearchPage1".tr,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(child: Text("SearchPage1".tr)),
    );
  }
}
