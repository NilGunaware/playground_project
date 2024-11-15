import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {

  int _selectedIndex = -1;
  int _selectedImg = 0 ;
  final List<String> buttonNames = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];
  final List<String> imagePaths = [
    "assets/man.jpg",
    "assets/man.jpg",
    "assets/man.jpg",
  ];


  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double widthInPercent = screenWidth * 0.6;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                GestureDetector(
                  onTap:  () {
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back)),
                Spacer(),

                Row(
                  children: [
                    Icon(Icons.favorite,color: Colors.red,),
                    SizedBox(width: 10,),
                    Icon(Icons.file_upload_outlined),

                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                // Large main image
                Container(
                  width: widthInPercent,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePaths[_selectedImg], // Show the selected image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Spacer(),

                // Column of selectable images
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imagePaths.length, (index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedImg = index; // Update selected index on tap
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _selectedImg == index ? Colors.red : Colors.grey, // Red for selected
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePaths[index], // Show different image for each thumbnail
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
            Text("Zara",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
            Text("Tie dye print satin effect shirt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
            Row(
              children: [
                Text(  "\$545" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.red,),
                    Text("4.9",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Selected Size :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),


            SizedBox(height: 5),
            Row(
              children: [
                Row(
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
                                ? Colors.red.shade100
                                : Colors.white,
                            border: Border.all(   color: _selectedIndex == index
                                ? Colors.red
                                : Colors.grey,),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                buttonNames[index], // Use the name from the list
                                style: TextStyle(
                                  color: _selectedIndex == index
                                      ? Colors.white
                                      : Colors.black, // Text color based on selection
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),

                ),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("Size Guide",style: TextStyle(color: Colors.red),))
              ],
            ),
            SizedBox(height: 10,),
            Text("Flowy shirt with lapel collar with V-neck and long sleeves. Front button closureRead more",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),




          ],
        ),
      ),
      bottomNavigationBar:      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(  // Wrap the Container with Expanded
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red,

                ),
                child:     Center(child: Text("Buy Now ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ,color: Colors.white),)),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(  // Wrap the Container with Expanded
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child:     Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text("Add Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ,color: Colors.white),),
                  ],
                )),
              ),
            ),
          ],
        ),
      )
    );
  }
}
