import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  List<String> myList = [
    'House',
    'Car',
    'Clothe',
    'Book',
    'Electrical machine',
    'HardWare'
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
                  const Text("Title:",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Header",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text("Product type:",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
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
                  const Text("Product Price :",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Price",
                        suffixText: 'DA',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  
                  const Text("Condition :",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                            const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const  [
                        Text("Old"),
                        Text("New")
                      ],
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
                  const Text("Product description :",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                        hintText: "Add a description",
                        border: OutlineInputBorder(
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
                        child: const Text(
                          "Post",
                          style: TextStyle(fontSize: 18),
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
