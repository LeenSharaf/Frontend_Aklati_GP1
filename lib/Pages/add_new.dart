import 'dart:convert';
import 'dart:io';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_homee/Pages/admain_add.dart';
//import 'package:test_homee/Shop/shop.dart';
import 'package:http/http.dart' as http;
import 'package:test_homee/constran.dart';


//import 'package:settings_ui/pages/settings.dart';

class AddProductPage extends StatefulWidget {
  
    const AddProductPage({Key? key}) : super(key: key);
    


  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<AddProductPage> {
   File? selectedImage;
  late String base64Image ;
  
  get adminId => null;
  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
  }
  //TextEditingController textarea = TextEditingController();


  //String dropdownValue = 'Main Dishes';

  int count = 0;

  //final List<String> list = <String>['Small', 'Med', 'Larg', 'Xlarg'];
//var adminId;

TextEditingController price = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController description = TextEditingController();
TextEditingController ingredients = TextEditingController();


  









  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   
  }
  
     Future<void> addNewProduct(
  String price,
  String name,
  String description,
  String ingredients,
  String category,
  String base64Image,
) async {
  try {
    var url = 'http://10.0.2.2:3000/addItem'; // Update with the correct URL

    var reqBody = jsonEncode({
      "price": price,
    "name": name,
    "description": description,
    "pageOwner": adminId,
    "ingredients": ingredients,
    "category": category,
    "img": base64Image
      // "pageOwner": adminId,
      // "price": price,
      // "name": name,
      // "description": description,
      // "ingredients": ingredients,
      // "category": category,
      // "img": base64Image,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: reqBody,
    );
    

    if (response.statusCode == 201) {
      Fluttertoast.showToast(
          msg: "Product added successfully !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 12.0);

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => creat()));
    } else {
      Fluttertoast.showToast(
          msg: "Failed to add product. Status code: ${response.statusCode}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 12.0);
    }
  } catch (error) {
    // Handle error
    print('Error: $error');
  }
} 


  











 var category ;
       final List<String> list = [
    'Main Dishes',
    'Traditional food',
    'Dessert',
    'Breakfast',
    'Sea Food',
    'Drinks',
    'Salad',
    'Appetizers',
    'Healty Food',
    'Others'  
  ];
  //bool? check2 = false, check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Product",
            style: TextStyle(
                color: Color.fromARGB(255, 146, 14, 14), fontSize: 20)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 146, 14, 14),
          ),
          onPressed: () {
                      Navigator.pop(context);

          },
        ),
      ),
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/icons/splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
              onTap: () {
                //FocusScope.of(context).unfocus();
                                  chooseImage("Gallery");
                                // choiceImage();

              },
              child: ListView(children: [
                //uploadImg(),
                Center(
                    child: Stack(children: [
                 
                   CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Padding(
                  padding: const EdgeInsets.all(0), // Border radius
                  child: ClipOval(
                    
                      child: selectedImage != null
                          ? Image.file(
                            
                              selectedImage!,
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            )
                          : Image.asset(
                              'lib/images/blank-profile.png',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            )),
                ),
              ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Color.fromARGB(255, 146, 14, 14),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          
                        ),
                        
                      ))
                ]),
                
                ),
                
                const SizedBox(
                  height: 25,
                ),



Container(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 30,
                          right: 30,
                        ),
                        child: Form(
                            child: Column(children: [
                          TextFormField(
                            controller: name,
                            decoration: InputDecoration(
                              // suffixIcon: Icon(
                              //   Icons.person,
                              //   color: Color.fromARGB(255, 66, 85, 54),
                              // ),
                              hintText: "Name",
                              labelText: "Product Name",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Mulish-VariableFont"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kPrimaryColor,
                                      width: 2.5)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: kPrimaryColor,
                              )),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: price,
                            decoration: InputDecoration(
                              hintText: "Price",
                              labelText: "Price",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Mulish-VariableFont"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2.5),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: kPrimaryColor,
                              )),
                            ),
                            // obscureText: true,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            maxLines: 4,

                            controller: description,
                            decoration: InputDecoration(
                              hintText: "add Discription",
                              labelText: "Product Details",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Mulish-VariableFont"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2.5),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: kPrimaryColor,
                               
                              )),
                            ),
                            // obscureText: true,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: ingredients,
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: "add ingredients",
                              labelText: "Ingredients",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Mulish-VariableFont"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2.5),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: kPrimaryColor,
                              )),
                            ),
                            // obscureText: true,
                          ),
                         SizedBox(height: 15),

                          DropdownButton<String>(
    hint: Text('Select Type'),
    isExpanded: true,

                                  value: category,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    //size: 10,
                                  ),
                                  elevation: 10,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      category = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                                          SizedBox(height: 10,),

                                ElevatedButton(
                            onPressed: () {
                            addNewProduct(price.text, name.text, description.text, ingredients.text , category, base64Image );

                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Confirm",
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 146, 14, 14),
                                padding: EdgeInsets.all(10),
                                minimumSize: Size(250.0, 40.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                textStyle: TextStyle(
                                  fontFamily: 'Mulish-VariableFont',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {
                              // order_now(username.text, address.text, phone.text,
                              //     widget.total, widget.orderdetail);
                            },
                            // ignore: sort_child_properties_last
                            child: Text(
                              "Cancel",
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 221, 121, 156),
                                padding: EdgeInsets.all(10),
                                minimumSize: Size(250.0, 40.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                textStyle: TextStyle(
                                  fontFamily: 'Mulish-VariableFont',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        
                          
                        ]))),


                // buildTextField("Product Details"),
              ]))),





              
    );
  }
}



