import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../Filter/popup.dart';

import 'constran.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key, 
   //required Key key,
   required this.onChanged,
  }) ;
  //: super( key: key);

  final ValueChanged onChanged;
 
  @override
  Widget build(BuildContext context) {

    return Container(
      

       margin:const EdgeInsets.all(40),
      padding:const EdgeInsets.symmetric(
        horizontal: 10,
        //vertical: 2, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        
                  color: Color.fromARGB(255, 240, 222, 191).withOpacity(0.4),
                //color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),

     
      ),
     
     child: Padding(

   
 padding: const EdgeInsets.all(8.0),
  child: Row(
    children: [      
      Expanded(
       child: TextField(
        style:const TextStyle(color: Colors.white),

        onChanged: onChanged,

          decoration: InputDecoration(
    enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
           icon: Icon(Icons.search , color: Colors.white,),
          //hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
            hintText: 'Search...',
            border: OutlineInputBorder(
        //borderRadius: BorderRadius.circular(12),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      
      IconButton(
       icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
        onPressed: () {
         Provider.of<AppProvider>(context,listen: false).filter();
        },
      ),
    ],
  ),
),
      
    );
    
  }
}
