import 'dart:convert';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../Pages/admain_add.dart';
//import 'package:test_homee/Shop/shop.dart';
import 'package:http/http.dart' as http;
import '../constran.dart';


//import 'package:settings_ui/pages/settings.dart';

class discount extends StatefulWidget {
  
    const discount({Key? key}) : super(key: key);
    


  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<discount> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   
  }

  

//late String _typesVal;
final List <String>  _typesName =[
   

];

  

 var item_cate ;
//        final List<String> list = [
//     'Main Dishes',
//     'Popular Dishes',
//     'Sweet',
//     'Others',
    
//   ];
  //bool? check2 = false, check3 = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context,provider,x) {
        return Scaffold(
          
          appBar: AppBar(
            title: Text("Add Discount",
                style: TextStyle(
                    color: Colors.white)),
            backgroundColor: kPrimaryColor,
            elevation: 1,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AdminHome(
                                                
                                              )));
              },
            ),
          ),
          body:Center(
            
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 50, right: 16),
              child: GestureDetector(
                  onTap: () {
                    

                  },
                  child: ListView(children: [
                    SizedBox(height: 20),
                          // Padding(padding: padding) , 
                    Text('Discount for your types:',
                    style: TextStyle(fontFamily:"Mulish-VariableFont" , fontSize: 20 , fontWeight: FontWeight.bold ),),  
                     const SizedBox(
                      height: 30,
                    ),

                TextField(
                  controller: provider.discountController,
                  onChanged: (value) {
                    if(value.isEmpty){
                      value='0';
                      provider.discountController.text=value;
                    }

                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    
                    labelText: 'Enter discount',
                    icon: Icon(Icons.percent),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                    
                  ),
                ),
         
                  const SizedBox(
                      height: 25,
                    ),

                            
                                   
                                    // DropdownButton<String>(
                                    //   alignment: AlignmentDirectional.centerEnd,
                                    //   value: item_cate,
                                    //   icon: const Icon(
                                    //     Icons.arrow_downward,
                                    //     size: 15,
                                    //   ),
                                    //   elevation: 10,
                                    //   style: const TextStyle(
                                    //       fontSize: 20,
                                    //       color: Colors.black,
                                    //       fontFamily: "Mulish-VariableFont",
                                    //       fontWeight: FontWeight.bold),
                                    //       borderRadius: BorderRadius.all(Radius.circular(10)),
                                      
                                    //   onChanged: (String? value) {
                                    //     // This is called when the user selects an item.
                                    //     setState(() {
                                    //       item_cate = value!;
                                    //     });
                                    //   },
                                    //   items: list.map<DropdownMenuItem<String>>(
                                    //       (String value) {
                                    //     return DropdownMenuItem<String>(
                                    //       value: value,
                                    //       child: Text(value),
                                    //     );
                                    //   }).toList(),
                                    // ),
                                    Container(
padding: const EdgeInsets.only(left: 30.0 , right: 30.0),
// decoration: BoxDecoration(
//   border: Border.all(color: Colors.black, width: 2.0),
//   borderRadius: BorderRadius.circular(10.0)
// ),
child: DropdownButton<String>(
  hint: Text('Select Type'),
dropdownColor: Colors.grey,
                                      elevation: 5,

                                      icon: const Icon(
                                        Icons.arrow_drop_down, 
                                      ),
                                      iconSize: 36.0,
                                      isExpanded: true,
                                      value:provider.consenItem ,

                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: "Mulish-VariableFont",
                                          fontWeight: FontWeight.bold),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      
                                      onChanged: (value) {
                                        provider.chooseItem(value);
                                      },
                                         items: provider.userItems.map<DropdownMenuItem<String>>(
                                          ( value) {
                                        return DropdownMenuItem<String>(
                                          value: value.id,
                                          child: Text(value.name),
                                        );
                                      }).toList(),
                                    ),


                                    ),
                            
                               
                 




  
           

                      SizedBox(height: 40,),









                  
                    Column(
                      
                      //crossAxisAlignment: CrossAxisAlignment.end,

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                         
                          ElevatedButton(
                            onPressed: () async{
                             await provider.addDisCount();
                                //  add(item_name.text, item_price.text, item_desc.text, item_discount.text , item_cate, _selectedGender, base64Image  );
                            },
                            style: OutlinedButton.styleFrom(
                             padding: const EdgeInsets.symmetric(horizontal: 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Color.fromARGB(255, 146, 14, 14),
                            ),

                            //  elevation: 2,

                            child: Text("Update",
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    color: Colors.white)),
                          ),
                         // Spacer(),

                          OutlinedButton(
                              // padding: const EdgeInsets.symmetric(horizontal: 50),
                              //shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(20)),

                              onPressed: () {                      Navigator.pop(context);
},
                              style: OutlinedButton.styleFrom(
                               padding: const EdgeInsets.symmetric(horizontal: 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27)),
                                backgroundColor: Color.fromARGB(255, 221, 121, 156),
                              ),
                              //  elevation: 2,

                              child: Text("Cancel",
                                  style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: 1,
                                      color: Colors.white))),






                        ]),

                    // buildTextField("Product Details"),
                  ]))),





                  
        
        ));
      }
    );
  }
}



 
