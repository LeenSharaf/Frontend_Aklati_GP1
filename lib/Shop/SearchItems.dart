import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/Shop/testfordetail.dart';
import 'package:roaa/models/item.dart';
import 'package:roaa/providers/AppProvider.dart';

class SearchItems extends SearchDelegate {


  
  
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }
  
  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(
        onPressed: () {
          close(context, query);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }
  
  @override
  Widget buildResults(BuildContext context) {
    List<Item>result=Provider.of<AppProvider>(context,listen: false).items.where((element) => element.name.toLowerCase().contains(query.toLowerCase())).toList();
    return GridView.builder(
                  itemCount: result.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: .69,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) => 
                     // padding: EdgeInsets.only(left: 15, right: 15, top: 7),
                       InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Itm(shopdata: result[index])));
                        },
                         child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 0),
                                             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                                             decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey.withOpacity(0.5),
                                   spreadRadius: 5,
                                   blurRadius: 7,
                                   offset: Offset(0, 3), // changes position of shadow
                                 ),
                               ],
                                      
                              ),
                          child: Column(
                            children: [
                               Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               
                                IconButton(
                                  onPressed: () async {
                                    if(result[index].isLiked){
                                      await Provider.of<AppProvider>(context,listen: false).disLikeItem(result[index].id!);
                                    }
                                    else{
                                    await Provider.of<AppProvider>(context,listen: false).likeItem(result[index].id!);
                                    }
                                  },
                                  icon:result[index].isLiked?Icon(Icons.favorite,color: Colors.red,): Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    //size: 15,
                                  ),
                                ),
                              ],
                            ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Itm(
                                            shopdata:result[index],
                       
                                            //id: widget.id,
                                          )));
                                },
                                child: Container(
                                    margin: EdgeInsets.all(2),
                                    child: Image.network(
                                      result[index].img,
                                      height: 100,
                                     width: 100,
                                    )
                                    ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 3),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  result[index].name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  result[index].discount.toString(),
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.symmetric(vertical: 5),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       Text(display_List[index]['item_price'] + "\$",
                              //           style: TextStyle(
                              //               fontSize: 10,
                              //               color: Colors.black,
                              //               fontFamily: "Mulish-VariableFont",
                              //               fontWeight: FontWeight.bold)),
                              //                                           Icon(Icons.shopping_cart)
                       
                              //     ],
                              //   ),
                              // )
                              Padding(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(result[index].price.toString() + "\$",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontFamily: "Mulish-VariableFont",
                                            fontWeight: FontWeight.bold)),
                                  // Text(sh.price,
                                  //     style: TextStyle(
                                  //         fontSize: 13,
                                  //         color: Colors.black,
                                  //        // fontFamily: "Mulish-VariableFont",
                                  //         fontWeight: FontWeight.bold)),
                                  Icon(Icons.shopping_cart)
                                ],
                              ),
                            )
                            ],
                          ),
                                             ),
                       )
                );
  }
  
  @override
  Widget buildSuggestions(BuildContext context) {
        List<Item>result=Provider.of<AppProvider>(context,listen: false).items.where((element) => element.name.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(result[index].name),
            onTap: () async {
              
            },
          );
        },
        separatorBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color:
                  Colors.black,
            ),
          );
        }),
        itemCount: result.length);
  }
}