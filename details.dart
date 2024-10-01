import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data;
  const ItemsDetails({super.key, this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop,
              color: Colors.black,
            ),
            Text(
              ' Ecommerce',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' mahmoud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.network(
              'https://www.shutterstock.com/image-photo/white-sneaker-sport-shoe-on-260nw-2155395817.jpg'),
          Container(
            child: Text(
              'shoes',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            child: Text(
              'white',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            child: Text(
              '350',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.orange),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('color : '),
              SizedBox(width: 10,),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              Text('  Gray'),
              SizedBox(width: 20,),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text('  Black'),
            ],
          ),Container(height: 10,),
          Container(
            child: Text('                             size:    34     35     40     41'),
          ),Container(height: 20,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // الإجراء عند الضغط على الزر
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, 
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
