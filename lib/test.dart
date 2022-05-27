import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Commandetest extends StatefulWidget {
  const Commandetest({Key? key}) : super(key: key);

  @override
  State<Commandetest> createState() => _CommandetestState();
}

class _CommandetestState extends State<Commandetest> {
  int incrementation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('Order Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white, // 1
        actions: [
       
          Icon(Icons.question_mark, color: Colors.black),
   
        ],
      )),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.grey[100],
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Heaven\'s Food',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),


              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your Order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Text('See menu'),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          
                         ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(35), // Image radius
                              child:
                                  Image.asset('burger.jpeg', fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            children: [
                              Text('  Big Mad Burger',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text('  \$19.90'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                      
                          MaterialButton(
                            color: Colors.orangeAccent,
                            textColor: Colors.white,
                            child: new Text("-",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () => {setState(() => incrementation--)},
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Text(' ${incrementation} '),
                          MaterialButton(
                            color: Colors.orangeAccent,
                            textColor: Colors.white,
                            child: new Text("+",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () => {setState(() => incrementation++)},
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(10), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(35), // Image radius
                              child:
                                  Image.asset('anana.jpeg', fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            children: [
                              Text('  Pineaple Park',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text('  \$24.60'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MaterialButton(
                            color: Colors.orangeAccent,
                            textColor: Colors.white,
                            child: new Text("-",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () => {setState(() => incrementation--)},
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Text(' ${incrementation} '),
                          MaterialButton(
                            color: Colors.orangeAccent,
                            textColor: Colors.white,
                            child: new Text("+",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () => {setState(() => incrementation++)},
                            minWidth: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SubTotal'),
                      Text('\$37.50'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery'),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text('Free'),
                        color: Colors.grey[200],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20)),
                      Text('\$37.50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  color: Colors.grey[100],
                  child: MaterialButton(
                    height: 40.0,
                    minWidth: 300.0,
                    color: Colors.black,
                    textColor: Colors.white,
                    child: new Text("Place Order"),
                    onPressed: () => {},
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

/******************************************************************************************* */
enum SingingCharacter { x, y }

class Card1 extends StatelessWidget {
  SingingCharacter? _character = SingingCharacter.x;
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
                  padding: EdgeInsets.all(1),
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
                            'reCommandetestd',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.x,
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
                        value: SingingCharacter.y,
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
                        value: SingingCharacter.y,
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
                        value: SingingCharacter.y,
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
                        value: SingingCharacter.y,
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

/*****************************************************************************************/
class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;
  String img;

  ItemModel(
      {this.expanded: false,
      required this.headerItem,
      required this.discription,
      required this.colorsItem,
      required this.img});
}


/*****************************************************************************************/