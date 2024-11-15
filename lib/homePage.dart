import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playgroundtask/popularItems.dart';

class DropMarket extends StatefulWidget {
  const DropMarket({super.key});

  @override
  State<DropMarket> createState() => _DropMarketState();
}

class _DropMarketState extends State<DropMarket> {

  int _selectedIndex = 0;


  final List<NavigationDestination> destinations = [
    NavigationDestination(
      icon: Icon(Icons.home),
      label: '',
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite),
      label: '',
    ),
    NavigationDestination(
      icon: Icon(Icons.shopping_cart),
      label: '',
    ),
    NavigationDestination(
      icon: Icon(Icons.account_circle),
      label: '',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text("drop market",style: TextStyle(fontWeight: FontWeight.w700),),
        actions: [
          Row(
            children: [
              Icon(Icons.manage_accounts, color: Colors.red),
              TextButton(onPressed: (){}, child: Text("London,UK",style: TextStyle(color: Colors.red),))
            ],
          )

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0 ,right: 8,bottom: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
          
                    children: [
          
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                            child:  ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/man.jpg",
                                fit: BoxFit.contain,
                              ),
                            )
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        "Women",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red, // Border color
                                      width: 2.0,        // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.red,
                                    child: Transform.rotate(
                                      angle: 2.309,
                                      child: Icon(Icons.arrow_back, size: 12),
                                    ),
                                  ),
          
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
          
                      SizedBox(width: 10,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/man.jpg",
                                  fit: BoxFit.contain,
                                ),
                              )
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        "Men",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red, // Border color
                                      width: 2.0,        // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.red,
                                    child: Transform.rotate(
                                      angle: 2.309,
                                      child: Icon(Icons.arrow_back, size: 12),
                                    ),
                                  ),
          
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/man.jpg",
                                  fit: BoxFit.contain,
                                ),
                              )
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        "Kids",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red, // Border color
                                      width: 2.0,        // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.red,
                                    child: Transform.rotate(
                                      angle: 2.309,
                                      child: Icon(Icons.arrow_back, size: 12),
                                    ),
                                  ),
          
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                              child:  ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/man.jpg",
                                  fit: BoxFit.contain,
                                ),
                              )
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        "Unisex",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.red, // Border color
                                      width: 2.0,        // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.red,
                                    child: Transform.rotate(
                                      angle: 2.309,
                                      child: Icon(Icons.arrow_back, size: 12),
                                    ),
                                  ),
          
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                 width: double.infinity,
                padding: EdgeInsets.all(10),
          
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(

                  children: [
                    Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("80 % OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black)),
                      Flexible(child: Text("Discover fashion that suits your style",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w100,color: Colors.black))),
                    ],),
                    SizedBox(width: 20,),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                          shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Popular Items",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
                  Spacer(),
          
                  Row(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PopolsrItems(),
                          ),
                        );
                      }, child: Text("View All",style: TextStyle(fontSize: 15, color: Colors.red))),
                      Icon(Icons.arrow_forward, size: 15,color: Colors.red,),
                    ],
                  ),
                ],
              ),
          
              Container(
                height: 200,
                width: double.infinity,
          
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset("assets/pop.png",fit: BoxFit.fill)),
              ),
              SizedBox(height: 5,),
              Text("New Ganni Bags",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
              Text("Flowy shirt with lapel collar with V-neck and long sleeves. Front button closure ",style: TextStyle(fontSize: 14  ,fontWeight: FontWeight.w400,color: Colors.black)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(

        surfaceTintColor: Colors.white,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: destinations,
      ),
    );

    
  }
}


