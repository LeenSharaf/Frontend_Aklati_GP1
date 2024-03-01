import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart'as http;
import 'package:image_picker/image_picker.dart';
import 'package:roaa/Pages/discount.dart';
import 'package:roaa/models/Fav.dart';

import '../models/Admin.dart';
import '../models/item.dart';
import '../models/order.dart';
import '../models/user.dart';
class AppProvider extends ChangeNotifier{
  int dummydata=0;
  TextEditingController passwordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  late Admin adminInfo;
  TextEditingController signupNameController=TextEditingController();
  TextEditingController signupNumberController=TextEditingController();
  TextEditingController signupLocationController=TextEditingController();
  TextEditingController signupPassController=TextEditingController();
  String adminId="";
  TextEditingController nameController = TextEditingController();
  TextEditingController adminmobileController = TextEditingController();
  TextEditingController adminpasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pageController = TextEditingController();
  TextEditingController logoController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  int quantity=0;
  bool fromUser=false;
  String serverUrl="http://10.0.2.2:3000/";
  editQuantity(int value){
    quantity=value;
    if(quantity<0){
      quantity=0;
    }
    notifyListeners();
  }
  late Order currentOrder;
  late String userId;
  late User loggedUser;

  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productDetailsController = TextEditingController();
  TextEditingController productIngredientsController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  List<Item>userItems=[];
  late Item itemForEdit;
  late String role;
  List<Item>items=[];
  List<Item>filteredItems=[];
  List<Order>userOrders=[];
  List<Order>userOrdersForReview=[];
  List<Order>userOrdersForDelivery=[];
  String? consenItem;
  chooseItem(String? value){
    consenItem=value;
    notifyListeners();
  }
  filterItems(String name){
    if(name=='all'){
      filteredItems=items;
    }
    else{
    filteredItems=items.where((item) => item.category==name).toList();

    }
    notifyListeners();
  }
  File? imageFile;
  pickImageForCategory() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    notifyListeners();
  }
  String picu='';
uploadPicture(File file) async {
    var stream = new http.ByteStream(DelegatingStream.typed(file.openRead()));
    var length = await file.length();
    var uri =
        Uri.parse("http://10.0.2.2:3000/upload");
    var req = http.MultipartRequest("POST", uri);
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(file.path));
    req.files.add(multipartFile);
    var resp = await req.send();
    picu=await resp.stream.bytesToString();
    log( picu);


    return picu;
  }
  addDisCount()async{
    Item? item ;
    for( Item it in userItems){
      if(it.id==consenItem){
        item=it;
        log(it.id!);
        break;
      }
    }
     log(item.toString());
     if(item==null){
      return;
     }
     item.discount=int.parse(discountController.text);
     log(item.id!);
     log(item.discount.toString());
     return await http.put(Uri.parse("http://10.0.2.2:3000/updateItem/${item!.id}"),headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },body:jsonEncode(item!.toMap()) );
  }
  signUp()async{
    final res=await http.post(
      Uri.parse("http://10.0.2.2:3000/addUser"),
      headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      body:json.encode(<String,dynamic>{
        'fullName':signupNameController.text,
        'mobile':signupNumberController.text,
        'address':signupLocationController.text,
        'password':signupPassController.text
      })

    );
    log(res.statusCode.toString());
    log(res.body);
    return res.statusCode==201?"OK":"Wrong!";
  }
   loginuser() async{
    if(mobileController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var reqBody = jsonEncode({
        "mobile": mobileController.text,
        "password": passwordController.text
      });
      print('login');
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/loginUser"),
          headers: {"Content-Type":"application/json"},
          body: reqBody
      );
      var jsonResponse = jsonDecode(response.body);
    //jsonResponse['success']==true
      if(jsonResponse['success']){
         Fluttertoast.showToast(
                                  msg: 'Log in Successful !',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              userId=jsonResponse['_id'];
                              await getUserInfo();
                              await getProducts();
                              await getUserorder();
                              return 'success';
          // var myToken = jsonResponse['token'];
          // prefs.setString('token', myToken);
      }else{
        //print('Something went wrong');
        Fluttertoast.showToast(
          msg: " invaled username or password !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 12.0);
          return 'fail';
      }
    }
  }
  getData()async{

  }
  getUserInfo()async{
    log(userId);
    final res =await http.get(Uri.parse("http://10.0.2.2:3000/getUser/${userId}"));
    loggedUser=User.fromMap(jsonDecode(res.body)['data']);
  }
  editOrder()async{
    currentOrder.note=notesController.text;
    currentOrder.count=quantity;
    log(currentOrder.note);
    final res=await http.put(Uri.parse(
    "http://10.0.2.2:3000/updateOrder/${currentOrder.id}"),headers: {"Content-Type":"application/json"},
    body: jsonEncode(currentOrder.toMap())
  );
  log(res.statusCode.toString());
  log(res.body);
  }
  bool filtered=false;
  filter(){
    
    if (!filtered) {
        log(filtered.toString());
    baseItems=filteredItems.toList();
  filteredItems.sort((a, b) => a.rate<b.rate?1:0,);
  filtered=true;
}
else{
  log(filtered.toString());
  // items=baseItems.toList();
  filteredItems=baseItems.toList();
  filtered=false;
}
    notifyListeners();
  }
   registerAdmin() async{
    
    if(nameController.text.isNotEmpty && mobileController.text.isNotEmpty && passwordController.text.isNotEmpty && addressController.text.isNotEmpty && pageController.text.isNotEmpty){
      if(imageFile!=null){
        await uploadPicture(imageFile!);
        logoController.text=imageFile!.path;
      }
      var regBody = {
      "fullName":nameController.text,
       "mobile":adminmobileController.text,
        "password":adminpasswordController.text,
        "address":addressController.text,
        "pageOwner":pageController.text,
        "logo":'http://10.0.2.2:3000/uploads/'+picu.substring(1,picu.length-1),
        
        
      };
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/addAdmin"),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode(regBody)
      );
      



      var jsonResponse = jsonDecode(response.body);
     // print(jsonResponse['status']);
      if(jsonResponse['success']){
        Fluttertoast.showToast(
          msg: "Registration successful !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
        return 'success';
      }else{
         Fluttertoast.showToast(
          msg: "This user already exit !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
        return 'fail';
      }
    }else{
      
    }
  }

   loginAdmin() async{
    if(mobileController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var reqBody = jsonEncode({
        "mobile": mobileController.text,
        "password": passwordController.text
      });
      //print(login);
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/loginAdmin"),
          headers: {"Content-Type":"application/json"},
          body: reqBody
      );
      var jsonResponse = jsonDecode(response.body);
    //jsonResponse['success']==true
      if(jsonResponse['success']){
         Fluttertoast.showToast(
                                  msg: 'Log in Successful !',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                                  adminId=jsonResponse["_id"];
                                  log("adminid :" +adminId);
                                  await getAdminInfo();
                                  await getAdminorder();
                                  return 'success';
                              
          // var myToken = jsonResponse['token'];
          // prefs.setString('token', myToken);
      }else{
        //print('Something went wrong');
        Fluttertoast.showToast(
          msg: " invaled username or password !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 12.0);
          return 'fail';
      }
    }
    return 'fail';
  }
  getAdminInfo()async{
    final res=await http.get(Uri.parse("http://10.0.2.2:3000/getAdmin/${adminId}"),headers: {"Content-Type":"application/json"},);
    log("getting :"+res.body);
    
    log(res.body);
    
    adminInfo=Admin.fromMap(jsonDecode(res.body));
    await getUserProducts();
    
    log("aaaaaaa: "+adminInfo.toMap().toString());
    notifyListeners();
  }
  deleteItem(String id)async{
        final res=await http.delete(Uri.parse("http://10.0.2.2:3000/deleteItem/${id}"),headers: {"Content-Type":"application/json"},);
        await getUserProducts();
        return res.statusCode==200;
    }
   addNewProduct(
  String price,
  String name,
  String description,
  String ingredients,
  String category,
  String base64Image,
) async {
  try {
    String picurl='';
    if(imageFile!=null){
      picurl= await uploadPicture(imageFile!);
          log(picurl);

    }
        log(picurl);

    var url = 'http://10.0.2.2:3000/addItem'; 

    var reqBody = jsonEncode({
      "price": price,
    "name": name,
    "description": description,
    "pageOwner": adminId,
    "ingredients": ingredients,
    "category": category,
    "img": '${serverUrl}uploads/'+picu.substring(1,picu.length-1),
    });
    log(picurl);
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
      await getUserProducts();
      return 'success';
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
    print('Error: $error');
  }
} 
  getUserProducts() async{
        final res=await http.get(Uri.parse("http://10.0.2.2:3000/getItemsByPageOwner/${adminId}"),headers: {"Content-Type":"application/json"},);
        List<dynamic>m=jsonDecode(res.body)['data'];
        userItems=m.map((e) => Item.fromMap(e)).toList();
        userItems=userItems.reversed.toList();
        notifyListeners();
  }

  void setItemForEdit(Item item) {
    itemForEdit=item;
    productDetailsController.text=item.description??'';
    productIngredientsController.text=item.ingredients??'';
    productNameController.text=item.name??'';
    productPriceController.text=item.price!=null?item.price.toString():'0';

    notifyListeners();
  }

  updateItem()async{
    itemForEdit.name=productNameController.text;
    itemForEdit.description=productDetailsController.text;
    itemForEdit.price=int.parse(productPriceController.text);
    itemForEdit.ingredients=productIngredientsController.text;

            final res=await http.put(
              Uri.parse("http://10.0.2.2:3000/updateItem/${itemForEdit.id}"),headers: {"Content-Type":"application/json"},
              body: jsonEncode(itemForEdit.toMap())
            );
  if(res.statusCode==200){
    await getUserProducts();
    return 'success';
  }

  

  }
  List<Item>baseItems=[];
  getProducts()async{
    final res=await http.get(Uri.parse("http://10.0.2.2:3000/getItems"),headers: {"Content-Type":"application/json"},);
    // log(jsonDecode(res.body)['data'].toString());
    List<dynamic>m=jsonDecode(res.body)['data'];
    items=m.map((e) => Item.fromMap(e)).toList();
    items=items.reversed.toList();
    baseItems=items.toList();
    filteredItems=items.toList();
    // log("helllooooo"+ items.length.toString());
    await getFav();
    notifyListeners();
  }
  getFav()async{
        final res=await http.get(Uri.parse("http://10.0.2.2:3000/getFavorites/${loggedUser.id}"),headers: {"Content-Type":"application/json"},);
        if(jsonDecode(res.body)['data']==null){
          return;
        }
       
        List<Fav> fav=(jsonDecode(res.body)['data']as List).map((e) { return Fav(item: e['item'][0]['_id'],user: e['user'][0]['_id']);}).toList();
        items.forEach((element) { 
          fav.forEach((element2) { 
            if(element.id==element2.item){
              element.isLiked=true;
              
            }
          });
        });
        notifyListeners();
  }
  getUserorder()async{
    final res=await http.get(Uri.parse(
      "http://10.0.2.2:3000/getOrdersByUser/${loggedUser.id}"
    ));
    if (jsonDecode(res.body)['data']!=null) {
  userOrders=(jsonDecode(res.body)["data"]as List).map((e) => Order.fromMap(e)).toList();
}
else{
  userOrders=[];
}
    notifyListeners();

  }
  acceptOrder(Order order)async{
    order.status="inProgress";
    final res=await http.put(Uri.parse(
      "http://10.0.2.2:3000/updateOrder/${order.id}",
      
    ),
    headers: {"Content-Type":"application/json"},
    body: jsonEncode(order.toMap())
    );
    await getAdminorder();
    notifyListeners();
  }
  finishOrder(Order order)async{
    order.status="done";
    final res=await http.put(Uri.parse(
      "http://10.0.2.2:3000/updateOrder/${order.id}",
      
    ),
    headers: {"Content-Type":"application/json"},
    body: jsonEncode(order.toMap())
    );
    await getAdminorder();
    notifyListeners();
  }
  rejectOrder(Order order)async{
    final res=await http.delete(Uri.parse(
      "http://10.0.2.2:3000/deleteItem/${order.id}"
    ),
    );
    notifyListeners();
  }
  getAdminorder()async{
    final res=await http.get(Uri.parse(
      "http://10.0.2.2:3000/getOrdersByPageOwner/${adminId}"
    ));
    if(jsonDecode(res.body)['success']){
      userOrders=(jsonDecode(res.body)["data"]as List).map((e) => Order.fromMap(e)).toList();
      userOrdersForReview=userOrders.where((e) => e.status=="inReview").toList();
      userOrdersForDelivery=userOrders.where((e) => e.status=="inProgress").toList();

    }
    else{
      userOrders=[];
    }
    notifyListeners();

  }
  likeItem(String itemId)async{
    log('user'+loggedUser.id!);
    log('item'+itemId);
    final res=await http.post(
              Uri.parse("http://10.0.2.2:3000/addFavorite"),headers: {"Content-Type":"application/json"},
              body: jsonEncode(<String,dynamic>{'user':loggedUser.id,'item':itemId})
            );
  await getProducts();
  }
  disLikeItem(String itemId)async{
    log('disLike');
    final res=await http.delete(
              Uri.parse("http://10.0.2.2:3000/deleteFavorite"),headers: {"Content-Type":"application/json"},
              body: jsonEncode(<String,dynamic>{'user':loggedUser.id,'item':itemId})
            );
  await getProducts();
  }
  addToCart(Item item,String size,int count)async{
    final res = await http.post(Uri.parse(
      "http://10.0.2.2:3000/addOrder"),headers: {"Content-Type":"application/json"},
              body: jsonEncode(<String,dynamic>{'user':loggedUser.id,'item':item.id,'pageOwner':item.pageOwner,'size':size,'count':count,'discount':item.discount})
    );
    log(res.statusCode.toString());
    log(res.body);
    await getUserorder();
    notifyListeners();
    return res.statusCode==200;
  }
 rateItem(Order order,double index)async{
  order.rate=index;
  final res=await http.put(Uri.parse(
    "http://10.0.2.2:3000/updateOrder/${order.id}"),headers: {"Content-Type":"application/json"},
    body: jsonEncode(order.toMap())
  );
 }

   editAdimInfo() async{
    if(imageFile!=null){
      String t=(await uploadPicture(imageFile!));
      t=t.substring(1,t.length-1);
      adminInfo.logo='http://10.0.2.2:3000/uploads/${t}';
    }
    adminInfo.pageName=pageController.text;
    final res=await http.put(Uri.parse(
    "http://10.0.2.2:3000/updateAdmin/${adminInfo.id}"),headers: {"Content-Type":"application/json"},
    body: jsonEncode(adminInfo.toMap())
  );
  await getAdminInfo();
  notifyListeners();
  return res.statusCode==200;

  }
}
