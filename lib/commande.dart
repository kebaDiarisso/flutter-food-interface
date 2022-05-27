import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Commande extends StatefulWidget {
  const Commande({Key? key}) : super(key: key);

  @override
  State<Commande> createState() => _CommandeState();
}

class _CommandeState extends State<Commande> {
  int incrementation = 0;
  int incrementationTwo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text('Order Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white, // 1
        actions: const [
          Icon(Icons.question_mark, color: Colors.black),
        ],
      )),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.grey[100],
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Heaven\'s Food',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading:
                              const Icon(Icons.timer, color: Colors.orange),
                          title: const Text('Delivery / As soon as possible'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios)),
                          //Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading:
                              const Icon(Icons.timer, color: Colors.orange),
                          title: const Text('BOO Cheese avenue, NYC'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Your Order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text('See menu'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ListTile(
                        leading: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(35), // Image radius
                            child:
                                Image.asset('burger.jpeg', fit: BoxFit.cover),
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('  Big Mad Burger',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text('  \$19.90'),
                          ],
                        ),
                        trailing: Wrap(
                          spacing: 10,
                          children: [
                            MaterialButton(
                              color: Colors.orangeAccent,
                              textColor: Colors.white,
                              child: new Text("-",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () {
                                setState(() {
                                  if (incrementation <= 0) {
                                    (incrementation = 0);
                                  } else
                                    (incrementation--);
                                });
                              },
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Text('${incrementation}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            MaterialButton(
                              color: Colors.orangeAccent,
                              textColor: Colors.white,
                              child: new Text("+",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () =>
                                  {setState(() => incrementation++)},
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ListTile(
                        leading: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(35), // Image radius
                            child: Image.asset('anana.jpeg', fit: BoxFit.cover),
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('  Pineaple Park',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text('  \$19.90'),
                          ],
                        ),
                        trailing: Wrap(
                          spacing: 10,
                          children: [
                            MaterialButton(
                              color: Colors.orangeAccent,
                              textColor: Colors.white,
                              child: new Text("-",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () => {
                                setState(() {
                                  if (incrementationTwo <= 0) {
                                    (incrementationTwo = 0);
                                  } else
                                    (incrementationTwo--);
                                })
                              },
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Text('${incrementationTwo}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            MaterialButton(
                              color: Colors.orangeAccent,
                              textColor: Colors.white,
                              child: new Text("+",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              onPressed: () =>
                                  {setState(() => incrementationTwo++)},
                              minWidth: 40,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: ListTile(
                        title: Text('Subtotal'),
                        trailing: Text('\$37.50'),
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ListTile(
                        title: const Text('Delivery'),
                        trailing: Container(
                            color: Colors.grey[100], child: const Text('Free')),
                      ))
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: ListTile(
                        title: Text('Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20)),
                        trailing: Text('\$37.50'),
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
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
                header: const Padding(
                  padding: const EdgeInsets.all(1),
                ),
                collapsed: const Text(
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
                        children: const [
                          Text('Potato wedges'),
                          Text(
                            'recommanded',
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
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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