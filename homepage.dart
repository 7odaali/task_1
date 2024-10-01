import 'package:flutter/material.dart';
import 'details.dart';
class Homepage extends StatefulWidget {
  const Homepage(
      {super.key}); // It's good practice to mark constructors as const if possible

  @override
  State<Homepage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,selectedItemColor: Colors.orange,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ''),
    ]),
      body: Container(
        padding: const EdgeInsets.all(20), // Marking padding as const
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.black,opticalSize: 20,),
                      hintText: 'search',
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.menu,
                    size: 20,
                  ),
                )
              ],),
            Container(height: 30,),
             Text('Categories',
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            Container(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [ Container(decoration:BoxDecoration(color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.laptop,size: 40,),padding: EdgeInsets.all(10),
                ),Text('Laptop',style: TextStyle(fontWeight: FontWeight.bold),)
                ],),
                Column(children: [ Container(decoration:BoxDecoration(color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.phone,size: 40,),padding: EdgeInsets.all(10),
                ),Text('Phone',style: TextStyle(fontWeight: FontWeight.bold),)
                ],),
                Column(children: [ Container(decoration:BoxDecoration(color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.electric_bike,size: 40,),padding: EdgeInsets.all(10),
                ),Text('Electric',style: TextStyle(fontWeight: FontWeight.bold),)
                ],),
                Column(children: [ Container(decoration:BoxDecoration(color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.card_giftcard_outlined,size: 40,),padding: EdgeInsets.all(10),
                ),Text('Gift',style: TextStyle(fontWeight: FontWeight.bold),)
                ],)
              ],
            ),Container(height: 30,),

            Text('Best Selling',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            GridView(physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250),
              children: [
               InkWell(onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemsDetails() ));
               },
               child:  Card(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(color: Colors.grey[200],
                     child: Image.network('https://www.shutterstock.com/image-photo/white-sneake''r-sport-shoe-on-260nw-2155395817.jpg'),
                   ),
                   Text('shoe 1',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                   Text('discription 1' , style: TextStyle(fontSize: 14,color: Colors.grey),),
                   Text('350\$' , style: TextStyle(fontSize: 14,color: Colors.orange[300]),)
                 ],
               ),
               ),
               ),
               InkWell(onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemsDetails() ));
    },
    child:
                Card(child: Column(children: [
                  Container(color: Colors.grey[200],
                    child: Image.network('https://www.shutterstock.com/image-photo/white-sneake''r-sport-shoe-on-260nw-2155395817.jpg'),
                  ),
                  Text('shoe 2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), Text('discription 2', style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Text('350\$' , style: TextStyle(fontSize: 14,color: Colors.orange[300]),)
                ],
                ),
                )),
    InkWell(onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemsDetails() ));
    },
    child:
                Card(child: Column(children: [
                  Container(color: Colors.grey[200],
                    child: Image.network('https://www.shutterstock.com/image-photo/white-sneake''r-sport-shoe-on-260nw-2155395817.jpg'),
                  ),
                  Text('shoe 2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), Text('discription 2', style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Text('350\$' , style: TextStyle(fontSize: 14,color: Colors.orange[300]),)
                ],
                ),
                )),
    InkWell(onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemsDetails() ));
    },
    child:
                Card(child: Column(children: [
                  Container(color: Colors.grey[200],
                    child: Image.network('https://www.shutterstock.com/image-photo/white-sneake''r-sport-shoe-on-260nw-2155395817.jpg'),
                  ),
                  Text('shoe 2',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), Text('discription 2', style: TextStyle(fontSize: 14,color: Colors.grey),),
                  Text('350\$' , style: TextStyle(fontSize: 14,color: Colors.orange[300]),)
                ],
                ),
                ))
              ],),
          ],
        ),
      ),
    );
  }
}
