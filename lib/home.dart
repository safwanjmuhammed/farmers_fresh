//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Farmer(),
  ));
}

class Farmer extends StatefulWidget{
  @override 
  State<Farmer> createState() => FarmerState();
}

 class FarmerState extends State<Farmer>{
  @override  
   Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'FARMER FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: const[
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.location_on_outlined)),
              Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'kochi',
                    style: TextStyle(fontWeight:FontWeight.bold ),
                ))),

            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for Vegitables and Fruits..',
                      prefixIcon: Icon(Icons.search),
                  )),
                 ),
               ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent),
                        borderRadius: const BorderRadius.all(Radius.circular(20))),
                            height: 20,
                            width: 120,
                           child: const Center(
                           child: Text(
                           "VEGETABLES",
                           style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ),
                                      Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                   Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "EXOTIC",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "FRESH CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),


                  ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Image.asset("assets/images/veg.jpg"),
                     const SizedBox(
                      height: 10,
                     ),
                     Padding(
                      padding:const EdgeInsets.all(10.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const[

                                Icon(Icons.timer),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("30 mins policy")
                              ],
                            ),
                            Column(
                        children: const [
                          Icon(Icons.camera_front_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Traceability")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.camera_front_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Local Surrouning")
                        ],
                      ),

                          ],
                        ),

                      ),)
                  ],
                ),
              ),
              SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              VegGrid(),
            ]),
          ),

          ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items:const[
              BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                 ),
                 label: "Home"),
                 BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
                 ),
                 label: "Cart"),
                 BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.green,
                 ),
                 label: "Accounts")

            ],
          ),
      
      );
    
  }
}

  class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://cdn-icons-png.flaticon.com/512/5175/5175244.png",
    "https://cdn-icons-png.flaticon.com/512/4392/4392462.png",
    "https://cdn-icons-png.flaticon.com/512/6641/6641874.png",
    "https://cdn-icons-png.flaticon.com/512/4057/4057120.png",
    "https://cdn-icons-png.flaticon.com/512/4796/4796229.png",
    "https://cdn-icons-png.flaticon.com/512/1686/1686637.png",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}
  