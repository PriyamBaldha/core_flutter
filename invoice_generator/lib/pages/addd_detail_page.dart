import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../globals.dart';

class AddDetail extends StatefulWidget {
  const AddDetail({Key? key}) : super(key: key);

  @override
  State<AddDetail> createState() => _AddDetailState();
}

class _AddDetailState extends State<AddDetail> {
  int initialIndex = 0;

  final ImagePicker _picker = ImagePicker();

  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController address3Controller = TextEditingController();
  final TextEditingController companyGSTNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text(
          "Add detail",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 50),
                  InkWell(
                    onTap: () {
                      setState(() {
                        initialIndex = 0;
                      });
                    },
                    child: const Text(
                      "Contact",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        initialIndex = 1;
                      });
                    },
                    child: const Text("Photo",
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              child: IndexedStack(
                index: initialIndex,
                children: [
                  //Contact UI
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: _height * 0.656,
                          width: _width,
                          color: Colors.white,
                          child: Form(
                            key: contactFormKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: nameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your name first";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.name = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Name",
                                    label: Text("Name"),
                                    icon: Icon(Icons.people),
                                  ),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your email";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.email = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Email",
                                    label: Text("Email"),
                                    icon: Icon(Icons.email),
                                  ),
                                ),
                                TextFormField(
                                  // maxLines: 5,
                                  keyboardType: TextInputType.phone,
                                  controller: phoneController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your number ";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.phone = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Number",
                                    label: Text("Number"),
                                    icon: Icon(Icons.phone),
                                  ),
                                ),
                                TextFormField(
                                  controller: address1Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Address";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.address1 = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Address",
                                    label: Text("Address(Street,Building No)"),
                                    icon: Icon(Icons.people),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 41),
                                  child: TextFormField(
                                      controller: address2Controller,
                                      onSaved: (val) {
                                        setState(() {
                                          Global.address2 = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Address",
                                        label: Text("Address Line 2"),
                                      )),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 41),
                                  child: TextFormField(
                                    controller: address3Controller,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.address3 = val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      hintText: "Address",
                                      label: Text("Address Line 3"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<int>(
                                  hint: const Text("Select Tax Percentage"),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 5,
                                      child: Text("Tax : 5%"),
                                    ),
                                    DropdownMenuItem(
                                      value: 12,
                                      child: Text("Tax : 12%"),
                                    ),
                                    DropdownMenuItem(
                                      value: 18,
                                      child: Text("Tax : 18%"),
                                    ),
                                    DropdownMenuItem(
                                      value: 28,
                                      child: Text("Tax : 28%"),
                                    ),
                                  ],
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(),
                                  ),
                                  validator: (val) {
                                    if (val == null) {
                                      return "Select Tax Percentage First...";
                                    }
                                    return null;
                                  },
                                  value: Global.initialTaxValue,
                                  onChanged: (val) {
                                    setState(() {
                                      Global.initialTaxValue = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            ElevatedButton(
                              child: const Text("Save"),
                              onPressed: () {
                                if (contactFormKey.currentState!.validate()) {
                                  contactFormKey.currentState!.save();

                                  print("Name: ${Global.name}");
                                  print("Email: ${Global.email}");
                                  print("Phone No: ${Global.phone}");
                                  print("Address: ${Global.address1}");
                                  print("Address: ${Global.address2}");
                                  print("Address: ${Global.address3}");
                                }
                              },
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  contactFormKey.currentState!.reset();

                                  nameController.clear();
                                  emailController.clear();
                                  phoneController.clear();
                                  address1Controller.clear();
                                  address2Controller.clear();
                                  address3Controller.clear();

                                  setState(() {
                                    Global.name = "";
                                    Global.email = "";
                                    Global.phone = "";
                                    Global.address1 = "";
                                    Global.address2 = "";
                                    Global.address3 = "";
                                  });
                                },
                                child: const Text("Clear")),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('InvoiceDetails');
                          },
                          child: const Text("Add your invoice Detail"),
                        )
                      ],
                    ),
                  ),
                  //Photo UI
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: _height * 0.20,
                        width: _width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: (Global.photoPath != null)
                                  ? FileImage(Global.photoPath!)
                                  : null,
                              radius: 60,
                              backgroundColor: Colors.grey.withOpacity(0.5),
                              child: (Global.photoPath != null)
                                  ? const Text(
                                      "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text("Add"),
                            ),
                            FloatingActionButton(
                              mini: true,
                              child: const Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).pop;
                                showDialog(
                                    //barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Choose Your Photo"),
                                        actions: [
                                          TextButton(
                                            child: const Text(
                                                "Choose your photo from Gallery"),
                                            onPressed: () async {
                                              XFile? pickedPhoto =
                                                  await _picker.pickImage(
                                                      source:
                                                          ImageSource.gallery);

                                              setState(() {
                                                Global.photoPath =
                                                    File(pickedPhoto!.path);
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          TextButton(
                                            child: const Text(
                                                "Choose your photo from Camera"),
                                            onPressed: () async {
                                              XFile? clickedPhoto =
                                                  await _picker.pickImage(
                                                      source:
                                                          ImageSource.camera);

                                              setState(() {
                                                Global.photoPath =
                                                    File(clickedPhoto!.path);
                                              });
                                              Navigator.of(context).pop();
                                            },
                                          )
                                        ],
                                      );
                                    });
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Save")),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Global.photoPath = null;
                                });
                              },
                              child: const Text("Clear")),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
