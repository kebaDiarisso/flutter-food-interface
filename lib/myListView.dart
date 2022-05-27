import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/detailItem.dart.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_location_alt_outlined,
                        color: Colors.orange[400]),
                    const Text(
                      '800 Cheese avenue, ',
                      style: TextStyle(
                        color: (Colors.black),
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'NYC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                CupertinoSearchTextField(
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailItem()),
                    );
                  },
                  itemSize: 20,
                  itemColor: Colors.grey,
                  prefixInsets: const EdgeInsets.only(left: 20),
                  suffixInsets: const EdgeInsets.only(right: 20),
                ),
              ],
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[100],
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Something new',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                //color: Colors.grey,
                padding: EdgeInsets.all(10),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                       width: 150.0,
                      child: Stack(children: [                       
                        Container(
                          child: Text(
                            'Pasta',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                       width: 150.0,
                      child: Stack(children: [                       
                        Container(
                          child: Text(
                            'Pasta',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                       width: 150.0,
                      child: Stack(children: [                       
                        Container(
                          child: Text(
                            'Pasta',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                       width: 150.0,
                      child: Stack(children: [                       
                        Container(
                          child: Text(
                            'Pasta',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    
                    
                    SizedBox(
                      width: 10,
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                'Recommended',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(top:1),
               // color: Colors.red,
                margin: EdgeInsets.only(top: 0.1),
                height: 350.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[  
                    
                    Stack(
                      children: [
                        IconButton(
                          icon: Image.asset('table.jpeg'),
                          iconSize: 300,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailItem()),
                            );
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 260),
                          padding: const EdgeInsets.all(0.5),
                          //color: Colors.red,
                          height: 100,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Heaven\'s Food',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  // height: 5,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.star,color: Colors.orange,),
                                      Text('45'),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(Icons.timer),
                                      Text('25-30min'),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(Icons.person),
                                      Text('\$\$\$'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Card(
                                    color: Colors.white,
                                    child: Text('Steak',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                  Card(
                                    child: Text('Fish',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                  Card(
                                    child: Text('Steak',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // color: Colors.red,
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        IconButton(
                          icon: Image.asset('restau.jpeg'),
                          iconSize: 300,
                          onPressed: () {},
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 260),
                          padding: const EdgeInsets.all(0.5),
                          //color: Colors.red,
                          height: 100,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Heaven\'s Food',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  // height: 5,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.star,color: Colors.orange,),
                                      Text('45'),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(Icons.timer),
                                      Text('25-30min'),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(Icons.person),
                                      Text('\$\$\$'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Card(
                                    color: Colors.white,
                                    child: Text('Steak',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                  Card(
                                    child: Text('Fish',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                  Card(
                                    child: Text('Steak',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
