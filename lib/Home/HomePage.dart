import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:products_application/Auth/SplashScreen.dart';
import 'package:products_application/Home/SearchPage.dart';
import 'package:products_application/Product/AddProduct.dart';
import 'package:products_application/Product/ProductCard.dart';
import 'package:products_application/Profile/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int current = 1;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Houses',
      'Cars',
      'Clothes',
      'Books',
      'Electrical machines',
      'HardWare'
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddProduct());
        },
        child: const Icon(
          Icons.create_new_folder_rounded,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.orange,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => const ProfilePage());
                    },
                    child: ClipOval(
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 80,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "firstname lastname",
                  style: TextStyle(color: Colors.white),
                ),
                const Text("email@gmail.com",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ListTile(
            onTap: () {
              Get.to(() => const ProfilePage());
            },
            title: const Text("first page"),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            onTap: () {},
            title: const Text("second page"),
            leading: const Icon(Icons.settings),
          ),
          ListTile(
              onTap: () {},
              title: const Text("third page"),
              leading: const Icon(Icons.drafts_outlined)),
          ListTile(
            onTap: () {
              Get.to(() => const SplashScreen());
            },
            title: const Text("Disconnect"),
            leading: const Icon(
              Icons.logout,
            ),
          )
        ],
      )),
      appBar: AppBar(
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.remove_red_eye_sharp,
        //         color: Colors.red, // Change Custom Drawer Icon Color
        //       ),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //     );
        //   },
        // ),
        //    flexibleSpace: Container(), //+++ decorations
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const SearchPage());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "Home page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Lottie.asset('images/home.json', height: 200),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            margin: const EdgeInsets.all(5),
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.orange
                                  : Colors.grey[400],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                                child: Text(
                              items[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: current == index
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 17),
                            )),
                          ),
                        ),
                        Visibility(
                          visible: current == index,
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            const PostCard(),
          ],
        ),
      ),
    );
  }
}
