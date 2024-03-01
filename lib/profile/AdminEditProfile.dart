import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/profile/CustomFormField.dart';

import '../constran.dart';
import '../providers/AppProvider.dart';
import 'user_info.dart';

class AdminEditProfile extends StatelessWidget {
const AdminEditProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
              Navigator.of(context).pop();
            },
      ),      // On Android it's false by default
      centerTitle: true,
      title: Text("Profile"),
      
    ),
    body:  Consumer<AppProvider>(
      builder: (context,provider,c) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
               InkWell(
                onTap: () async{
                  await provider.pickImageForCategory();
                },
                 child: Info(
                 image: provider.adminInfo.logo,
                  name: provider.adminInfo.pageName,
                  email: provider.adminInfo.mobile,
                             ),
               ),
              CustomTextField(validation: (){}, label: "Page Name", controller: provider.pageController,icon: Icon(Icons.person),),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 50,
                child: ElevatedButton(
                  
                    style: TextButton.styleFrom(shape: StadiumBorder(), backgroundColor: kPrimaryColor),
                    onPressed: () async{
                      bool x=await provider.editAdimInfo();
                      if(x){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text("Success"),
                            content: Text("Profile Updated Successfully"),
                            actions: <Widget>[
                              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('ok'))
                            ]
                          );
                        });
                      }
                      else{
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text("Faluire"),
                            content: Text("Something Wrong!"),
                            actions: <Widget>[
                              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('ok'),)
                            ]
                          );
                        });
                      }
                    },
                    child: Text(
                      "Edit Info",
                    
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          ),
        );
      }
    ),
    );
  }
}