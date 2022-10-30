import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:products_application/Auth/SplashScreen.dart';
import 'package:products_application/Home/SearchPage.dart';
import 'package:products_application/Product/AddProduct.dart';
import 'package:products_application/Product/ProductCard.dart';
import 'package:products_application/Profile/ProfilePage.dart';
import 'package:products_application/Themes/themes.dart';

import '../Services/locale.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int current = 0;

class _HomePageState extends State<HomePage> {
  String? dropdownValue = sharredPrefs!.getString("codeLang") == null
      ? Get.deviceLocale!.languageCode
      : sharredPrefs!.getString("codeLang")!;

  @override
  Widget build(BuildContext context) {
    Map<String, String> langCodeList = {"English": "en", "Français": "fr"};

    List<String> items = [
      "homeItems1".tr,
      "homeItems2".tr,
      "homeItems3".tr,
      "homeItems4".tr,
      "homeItems5".tr,
      "homeItems6".tr
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
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      sharredPrefs!.getBool("isDarkTheme") ?? false
                          ? {
                              Get.changeTheme(Themes.customLightTheme),
                              setState(() {
                                sharredPrefs!.setBool("isDarkTheme", false);
                              })
                            }
                          : {
                              Get.changeTheme(Themes.customDarkTheme),
                              setState(() {
                                sharredPrefs!.setBool("isDarkTheme", true);
                              })
                            };
                    },
                    icon: sharredPrefs!.getBool("isDarkTheme") ?? false
                        ? const Icon(Icons.dark_mode)
                        : const Icon(Icons.light_mode)),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    value: dropdownValue,
                    items: langCodeList
                        .map((key, value) {
                          return MapEntry(
                              key,
                              DropdownMenuItem(
                                value: value,
                                child: Text(key),
                              ));
                        })
                        .values
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        dropdownValue = value as String?;
                        Get.updateLocale(Locale(dropdownValue!));
                        sharredPrefs!
                            .setString("codeLang", dropdownValue.toString());
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Get.to(() => const ProfilePage());
            },
            title: Text("drawer1".tr),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            onTap: () {},
            title: Text("drawer2".tr),
            leading: const Icon(Icons.settings),
          ),
          ListTile(
              onTap: () {},
              title: Text("drawer3".tr),
              leading: const Icon(Icons.drafts_outlined)),
          ListTile(
            onTap: () {
              Get.to(() => const SplashScreen());
            },
            title: Text("drawer4".tr),
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
        title: Text(
          "HomePage".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      //backgroundColor: Colors.grey[100],
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
