import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lastPage.dart';

class PopolsrItems extends StatefulWidget {
  const PopolsrItems({super.key});

  @override
  State<PopolsrItems> createState() => _PopolsrItemsState();
}

class _PopolsrItemsState extends State<PopolsrItems> {
  int _selectedIndex = -1;
  final List<String> buttonNames = [
    "View All",
    "Shirts",
    "Tops",
    "Skirts",
    "Trousers",
  ];

  final List<String> imagePaths = [
    "assets/bag.png",
    "assets/bag.png",
    "assets/bag.png",
  ];
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back)),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "Popular Item",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.search),
                    Icon(Icons.file_upload_outlined)
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
                children: List.generate(buttonNames.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0), // Padding between buttons
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index; // Update the selected index on tap
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? Colors.black
                              : Colors.white, // Red for selected, white for others
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            buttonNames[index],
                            style: TextStyle(
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : Colors.black, // Text color based on selection
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.filter_list_alt),
                    Text("Filters",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.sort),
                    Text("Sorts",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GestureDetector(

                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LastPage(),
                              ),
                            );
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),

                            borderRadius: BorderRadius.circular(10)),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                                 child: Stack(children: [
                                   Image.asset(imagePaths[index],fit: BoxFit.fill,),
                                   Positioned(
                                     right: 7,
                                       top: 10,
                                       child: SizedBox(
                                         height: 30,
                                           child: CircleAvatar(
                                             child:GestureDetector(
                                               onTap: () {
                                                 setState(() {
                                                   _isFavorite = !_isFavorite; // Toggle the heart state
                                                 });
                                               },
                                               child: Icon(
                                                 _isFavorite ? Icons.favorite : Icons.favorite_border, // Toggle between filled and unfilled
                                                 color: Colors.red, // Set color to red for heart
                                                 size:23, // Size of the heart icon
                                               ),
                                             ),
                                           ))),
                                 ], ),),
                           Padding(
                             padding: const EdgeInsets.only(left: 7,top: 10),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Text("Tous",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                               Text("Bag",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200,color: Colors.black)),
                               Text(  "\$545" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black)),
                             ],),
                           )
                           ],
                        ),
                      )
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



