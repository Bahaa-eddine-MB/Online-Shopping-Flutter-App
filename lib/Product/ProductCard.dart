import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:products_application/Profile/ProfilePage.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                        "https://cdn.mos.cms.futurecdn.net/JXoDcC9vDwiM7cdYv7YfU7.jpg"),
                    height: 250,
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const ProfilePage());
                      },
                    ),
                  ),
                  const Positioned(
                      left: 20,
                      bottom: 10,
                      child: Text(
                        "Skin for sale!!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.orange),
                      ))
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Price :',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('1000000000 Da'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Condition:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('New'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('some description ...\nalso some text')
                  ],
                ),
              )
            ],
          )),
    );
  }
}
