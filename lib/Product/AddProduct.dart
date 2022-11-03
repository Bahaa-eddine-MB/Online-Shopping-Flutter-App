import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  List<String> myList = [
    "homeItems1".tr,
    "homeItems2".tr,
    "homeItems3".tr,
    "homeItems4".tr,
    "homeItems5".tr,
    "homeItems6".tr
  ];
  String? dropdownValue;
  double currentValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_photo_alternate_outlined,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                "images/logo.jpg",
                height: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 40,
              indent: 40,
              color: Colors.orange,
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("addProd1".tr,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "addProd2".tr,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text("addProd3".tr,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
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
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: myList.map((element) {
                        return DropdownMenuItem(
                          value: element,
                          child: Text(element),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text("addProd4".tr,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "addProd5".tr,
                        suffixText: 'DA',
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text("addProd6".tr,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("addProd7".tr), Text("addProd8".tr)],
                    ),
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      valueIndicatorColor: Colors.grey[300],
                      thumbColor: Colors.orange,
                    ),
                    child: Slider(
                        activeColor: Colors.orange,
                        inactiveColor: Colors.white,
                        min: 0,
                        divisions: 10,
                        label: currentValue.round().toString(),
                        value: currentValue,
                        max: 10,
                        onChanged: (double value) {
                          setState(() {
                            currentValue = value;
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text("addProd9".tr,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "addProd10".tr,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        onPrimary: Colors.white,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 14),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(colors: <Color>[
                              Colors.deepOrange,
                              Colors.orange
                            ])),
                        child: Text(
                          "addProd11".tr,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
