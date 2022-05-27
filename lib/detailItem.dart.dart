import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:like_button/like_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'commande.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  State<DetailItem> createState() => _DetailItemState();
}

enum SingingCharacter { lafayette, jefferson }

class _DetailItemState extends State<DetailItem> {
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(312.0), // here the desired height
        child: AppBar(
          iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
          actions: [
            LikeButton(),        
          ],
          flexibleSpace: 
        Column(
          children: [
            CarouselSlider(
              
              options: CarouselOptions(
                autoPlay: false,
                // enlargeCenterPage: true,
                //scrollDirection: Axis.vertical,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
              ),
              items: imagesList
                  .map(
                    (item) => Container(
                        color: Colors.red,
                        //height: 100,
                        child: Stack(
                            children: <Widget>[
                              Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 300,
                              ),
                            ],
                          
                        ),
                      ),
                    
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.8)
                        : Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            )
          ],
        ),

          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              padding: EdgeInsets.all(5),
              // color:Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Big Mad Burger',
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5),
                  ),
                  Text(
                      'Potato Bun, cheddar cheese, beef,cumumber, red, onion, iceberg lettuce,avocado,tomato'),
                  Text(
                    'Choose addition',
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5),
                  ),
                  Text('Required'),
                ],
              ),
            ),

            /********************************************************************************/
            Container(
              //   color: Colors.grey[100],
              width: 500,
              height: 140,
              child: ExpandableTheme(
                data: const ExpandableThemeData(
                  iconColor: Colors.blue,
                  useInkWell: true,
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    Card1(),
                    // Card2(),
                    //Card3(),
                  ],
                ),
              ),
            ),

            /********************************************************************************/
          
            Center(
              child: Container(
                  padding: EdgeInsets.all(20),
                  //   color: Colors.grey[100],
                  child: MaterialButton(
                    height: 40.0,
                    minWidth: 300.0,
                    color: Colors.black,
                    textColor: Colors.white,
                    child: new Text("Add (1) to cart - 12,90"),
                    onPressed: () => {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Commande()),
                            )
                    },
                    splashColor: Colors.redAccent,
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

/**************************************************************************************/
class Card1 extends StatelessWidget {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
                  
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                   ),
                collapsed: Text(
                  'Choose',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Potato wedges'),
                          const Text(
                            'recommanded',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          // setState(() {
                          //   _character = value;
                          // });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Corn on the cob'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          // setState(() {
                          //   _character = value;
                          // });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Corn on the cob'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          // setState(() {
                          //   _character = value;
                          // });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Corn on the cob'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          // setState(() {
                          //   _character = value;
                          // });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Corn on the cob'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          // setState(() {
                          //   _character = value;
                          // });
                        },
                      ),
                    ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

/**************************************************************************************/

  final List<String> imagesList = [
    (
    'assets/burg.jpeg'),
    'assets/burger2.jpeg',
    'assets/burger3.jpeg',
    //'assets/burgerr.jpeg',

  ];