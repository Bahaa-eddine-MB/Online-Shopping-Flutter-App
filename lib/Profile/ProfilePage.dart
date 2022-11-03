import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Profile/EditProfilePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const EditProfilePage());
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://static.wikia.nocookie.net/vagabond/images/4/4d/Vagabond_Musashi.jpg/revision/latest?cb=20200425161641",
                              ))),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.transparent, shape: BoxShape.circle),
                      padding: const EdgeInsets.all(4),
                      child: const CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.edit,
                            size: 25,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                const Text(
                  'First name last name',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      label: Text(
                        "ProfilPage1".tr,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)))),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      label: Text(
                        "ProfilPage2".tr,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "400",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("ProfilPage3".tr,
                              style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          const Text(
                            "200",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("ProfilPage4".tr,
                              style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Column(
                        children:   [
                          const Text(
                            "100",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("ProfilPage5".tr, style: const TextStyle(fontSize: 12)),
                        ],
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
