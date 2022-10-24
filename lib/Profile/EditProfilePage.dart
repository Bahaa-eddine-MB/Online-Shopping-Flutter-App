import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {},
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
                            color: Colors.white, shape: BoxShape.circle),
                        padding: const EdgeInsets.all(4),
                        child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.orange,
                            child: Icon(
                              Icons.add_a_photo,
                              size: 22,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("First name",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: TextEditingController(text: "first name"),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Last name",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: TextEditingController(text: "last name"),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Phonr number",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: TextEditingController(text: "05555555"),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35,),
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                onPrimary: Colors.white,
                elevation: 0.0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 14),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: <Color>[Colors.deepOrange, Colors.orange])),
                child: const Text(
                  "Confirm changes",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
