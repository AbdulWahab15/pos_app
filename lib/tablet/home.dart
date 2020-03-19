import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';

import 'left_column.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
//  List<Widget> _buildMiddleColumRowYellow(BuildContext context) {
//    List<Widget> boxes = List();
//    double height = (MediaQuery.of(context).size.height / 12) - 8;
//    double width = (height * 2) - 8;
//    for (int i = 0; i < 6; i++) {
//      boxes.add(Card(
//        child: Container(
//          width: width,
//          height: height,
//          color: Colors.orange,
//        ),
//      ));
//    }
//    return boxes;
//  }

  _buildMiddleColumRowYellow(
      BuildContext context, Color color, String title, size) {
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2) - 10;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 16,
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          
          child: Container(

//            color: color,
              width: width,
              height: height,
//            color: color,
              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: size + 2),
              ))),
        ),
      ),
    );
  }

  List<Widget> _buildMiddleColumRowWhite(BuildContext context) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 10) - 8;
    double width = (height * 2) - 8;
    for (int i = 0; i < 5; i++) {
      boxes.add(GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 16,
          child: Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
        ),
      ));
    }
    return boxes;
  }

  _buildMiddleColumRowWhiteSlim(
      BuildContext context, Color tileColor, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10) - 8;
    double width = (height * 2) - 8;

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: width,
          height: height,
          color: tileColor,
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: size),
          )),
        ),
      ),
    );
  }

  _buildFirstColumnRowGrey(BuildContext context, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10) - 8;
    double width = (height * 2) - 8;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: width,
          height: height,
          color: Colors.grey,
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: size, color: Colors.white),
          )),
        ),
      ),
    );
  }

  _buildMiddleColumYellow(
      BuildContext context, Color color, String title, size) {
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2.2+4);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          color: color,
          elevation: 16,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Container(
              width: width,
              height: height,
              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: size+2),
              ))),
        ),
      ),
    );
  }

//  List<Widget> _buildMiddleColumRowBrown(BuildContext context, size) {
//    List<Widget> boxes = List();
//    double height = (MediaQuery.of(context).size.height / 12) - 8;
//    double width = (height * 2);
////    for (int i = 0; i < 4; i++) {
////      boxes.add(Card(
////        child: Container(
////          width: width,
////          height: height,
////          color: Colors.brown,
////        ),
////      ));
////    }
////    boxes.add(
////      Card(
////        child: Container(
////
////        ),
////      )
////    );
//    boxes.add(Card(
//
//      child: Container(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 16),
//              child: Icon(
//                Icons.arrow_back_ios,
//                size: size * 2,
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(right: 16),
//              child: Icon(
//                Icons.arrow_forward_ios,
//                size: size * 2,
//              ),
//            ),
//          ],
//        ),
//        width: width,
//        height: height,
//        color: Colors.white,
//      ),
//    ));
//    return boxes;
//  }
  _buildMiddleColumRowBrown(BuildContext context, size, color) {
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2.5) - 8;
//    for (int i = 0; i < 4; i++) {
//      boxes.add(Card(
//        child: Container(
//          width: width,
//          height: height,
//          color: Colors.brown,
//        ),
//      ));
//    }
//    boxes.add(
//      Card(
//        child: Container(
//
//        ),
//      )
//    );
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 16,
      child: Container(

        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration:
                      BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                  width: width / 2 -4,
                  height: height,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: size * 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration:
                      BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                  width: width / 2 - 4,
                  height: height,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: size * 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildMiddleColumRightBrown(BuildContext context, size, color) {
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2.5) - 12;
//    for (int i = 0; i < 4; i++) {
//      boxes.add(Card(
//        child: Container(
//          width: width,
//          height: height,
//          color: Colors.brown,
//        ),
//      ));
//    }
//    boxes.add(
//      Card(
//        child: Container(
//
//        ),
//      )
//    );
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 16,
      child: Container(

        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration:
                  BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                  width: width / 2 - 8,
                  height: height,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: size * 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration:
                  BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                  width: width / 2 - 8,
                  height: height,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: size * 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildTaskbar(size) {
    List<String> options = <String>['Mega', 'item2', 'item3'];
    String dropdownValue = 'Mega';
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: IconButton(
              icon: Icon(
                Icons.format_align_right,
                color: Colors.amberAccent,
                size: size,
              ),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Oubba',
            style: TextStyle(fontSize: size),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Icon(
            Icons.arrow_back_ios,
            size: size,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: DropdownButton(
              icon: Icon(Icons.keyboard_arrow_down),
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: size),
                  ),
                );
              }).toList(),
              value: dropdownValue,
              underline: Container(),
              onChanged: (String newValue) {
                dropdownValue = newValue;
              }),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'Button',
                style: TextStyle(color: Colors.grey),
              ),
              color: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.grey, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'Button',
                style: TextStyle(color: Colors.amberAccent),
              ),
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'Button',
                style: TextStyle(color: Colors.red),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.red, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'DAY',
                style: TextStyle(color: Colors.grey),
              ),
              color: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.grey, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'PARKED',
                style: TextStyle(color: Colors.amberAccent),
              ),
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Text(
                'HISTORY',
                style: TextStyle(color: Colors.red),
              ),
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              color: Colors.red,
              borderSide: BorderSide(
                  color: Colors.red, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              color: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.grey, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Icon(Icons.person_outline, color: Colors.amberAccent),
              borderSide: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 0.8),
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              color: Colors.amberAccent,
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            height: 45,
            child: OutlineButton(
              child: Icon(
                Icons.power_settings_new,
                color: Colors.red,
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(12.0)),
              borderSide: BorderSide(
                  color: Colors.red, style: BorderStyle.solid, width: 0.8),
              onPressed: () {},
            ),
          ),
        ),
//        PopupMenuButton(
//          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//            const PopupMenuItem<String>(
//              value: 'Value1',
//              child: Text('\u{1F3F3} English'),
//            ),
//            const PopupMenuItem<String>(
//              value: 'Value2',
//              child: Text('\u{1F3F4} French'),
//            ),
//          ],
//          child: Text(
//            'ENG',
//            style: TextStyle(fontSize: size),
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.all(4.0),
//          child: PopupMenuButton(
//            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//              PopupMenuItem<String>(
//                value: 'Value1',
//                child: FlatButton.icon(
//                    onPressed: null,
//                    icon: Icon(Icons.account_circle),
//                    label: Text('Profile')),
//              ),
//              const PopupMenuItem<String>(
//                value: 'Value2',
//                child: Divider(),
//              ),
//              PopupMenuItem<String>(
//                value: 'Value3',
//                child: FlatButton.icon(
//                    onPressed: null,
//                    icon: Icon(Icons.power_settings_new),
//                    label: Text('Logout')),
//              ),
//            ],
//            child: CircleAvatar(
//              backgroundColor: Colors.pink,
//            ),
//          ),
//        ),
//        PopupMenuButton(
//          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//            PopupMenuItem<String>(
//              value: 'Value1',
//              child: Text('NOTIFICATIONS'),
//            ),
//            const PopupMenuItem<String>(
//              value: 'Value2',
//              child: Divider(
//                height: 0,
//              ),
//            ),
//            PopupMenuItem<String>(
//              value: 'Value3',
//              child: ListTile(
//                leading: CircleAvatar(
//                  backgroundColor: Colors.red,
//                ),
//                title: Text('Completed the task'),
//                subtitle: Text('2 days ago'),
//              ),
//            ),
//            PopupMenuItem<String>(
//              value: 'Value3',
//              child: ListTile(
//                leading: CircleAvatar(
//                  backgroundColor: Colors.blue,
//                ),
//                title: Text('Settings updated'),
//                subtitle: Text('3 days ago'),
//              ),
//            ),
//            PopupMenuItem<String>(
//              value: 'Value3',
//              child: ListTile(
//                leading: CircleAvatar(
//                  backgroundColor: Colors.green,
//                ),
//                title: Text('Completed the task'),
//                subtitle: Text('2 days ago'),
//              ),
//            ),
//            PopupMenuItem<String>(
//              value: 'Value4',
//              child: Text(
//                'All notifications',
//                style: TextStyle(color: Colors.blue),
//              ),
//            ),
//          ],
//          child: Icon(
//            Icons.add_alert,
//            size: size,
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 16),
//          child: Icon(
//            Icons.chat_bubble_outline,
//            size: size,
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.only(right: 16),
//          child: Icon(
//            Icons.email,
//            size: size,
//          ),
//        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    double size = (1 / 100) * (MediaQuery.of(context).size.width);
    double height = (MediaQuery.of(context).size.height / 11);
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //Taskbar
            Container(
                height: 60, color: Colors.white, child: _buildTaskbar(size)),
            //Row with 3 columns
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Left Column
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LeftColumn(),
                      )),
                  // Middle Column

                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 32.0, bottom: 32.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _buildFirstColumnRowGrey(context, 'STORE', size),
                              _buildFirstColumnRowGrey(
                                  context, 'PRODUCT', size),
                              _buildFirstColumnRowGrey(context, 'TABLE', size),
                              _buildFirstColumnRowGrey(
                                  context, 'COMMANDE', size),
                              _buildFirstColumnRowGrey(
                                  context, 'PAIEMENT', size),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _buildMiddleColumRowYellow(
                                  context, Colors.amber, 'SANDWICH', size),
                              _buildMiddleColumRowYellow(
                                  context, Colors.amber, 'TACOS', size),
                              _buildMiddleColumRowYellow(
                                  context, Colors.amber, 'TEX MEX', size),
                              _buildMiddleColumRowYellow(
                                  context, Colors.amber, 'HAMBURGER', size),
                              _buildMiddleColumRowYellow(
                                  context, Colors.amber, 'DESERT', size),
                              _buildMiddleColumRowYellow(
                                  context, Colors.red, '< BACK', size),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: _buildMiddleColumRowWhite(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowWhite(context),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: _buildMiddleColumRowWhite(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowWhite(context),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 16, top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _buildMiddleColumYellow(
                                  context, Colors.amber, 'SUR PLACE', size),
                              _buildMiddleColumYellow(
                                  context, Colors.amber, 'EMPORTER', size),
                              _buildMiddleColumYellow(
                                  context, Colors.amber, 'LIVRAISON', size),
                              _buildMiddleColumYellow(
                                  context, Colors.amber, 'SUR PLACE', size),
//                              _buildMiddleColumYellow(context, Colors.amber, 'SUR PLACE',size),

                              _buildMiddleColumRowBrown(
                                  context, size, Colors.red)
                            ],
                          ),
                        ),
//                        Expanded(child: Container()),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _buildMiddleColumRowWhiteSlim(
                                  context, Colors.white, "TIME", size),
                              _buildMiddleColumRowWhiteSlim(
                                  context, Colors.white, "BUTTON", size),
                              _buildMiddleColumRowWhiteSlim(
                                  context, Colors.white, "CREDIT", size),
                              _buildMiddleColumRowWhiteSlim(
                                  context, Colors.white, "EXCHANGE", size),
                              _buildMiddleColumRowWhiteSlim(
                                  context, Colors.white, "CUSTOMER", size),
                            ]),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile1 = true;
                                              });
                                            },

                                            onPanEnd: (_) {
                                              print('Pan End');
//          _longPressUp();
                                            },

                                            // for checking when an onPan is detected
                                            onPanStart: (details) {
                                              print('Pan Started: $details');
                                            },

                                            onLongPressUp: () {
//                                              setState(() {
//                                                tile1 = false;
//                                              });
                                              print('Long press up ');
                                            },
                                            child: tile1 == true
                                                ? _buildListTileLong(
                                                    context,
                                                    '20',
                                                    'Olympic Soccer Ball',
                                                    size,1)
                                                : option1 == true ?_buildListTile(
                                                    context,
                                                    '20',
                                                    'Olympic Soccer Ball',
                                                    '\$12',
                                                    size,
                                                    1,'(\$8.00 off)'):_buildListTile(context, '20', 'Olympic Soccer Ball', '\$12', size,1, ''),
                                          ),
                                          GestureDetector(
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile2 = true;
                                              });
                                            },

                                            onPanEnd: (_) {
                                              print('Pan End');
//          _longPressUp();
                                            },

                                            // for checking when an onPan is detected
                                            onPanStart: (details) {
                                              print('Pan Started: $details');
                                            },

                                            onLongPressUp: () {
//                                              setState(() {
//                                                tile2 = false;
//                                              });
                                              print('Long press up ');
                                            },
                                            child: tile2 == true
                                                ? _buildListTileLong(
                                                    context,
                                                    '10',
                                                    'Phone Battery 10',
                                                    size,2)
                                                : option2==true ? _buildListTile(
                                                    context,
                                                    '10',
                                                    'Phone Battery 10',
                                                    '\$12',
                                                    size,
                                                    2 ,'(\$8.00 off)'):_buildListTile(
                                                context,
                                                '10',
                                                'Phone Battery 10',
                                                '\$12',
                                                size,
                                                2 ,''),
                                          ),

                                          GestureDetector(
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile3 = true;
                                              });
                                            },

                                            onPanEnd: (_) {
                                              print('Pan End');
//          _longPressUp();
                                            },

                                            // for checking when an onPan is detected
                                            onPanStart: (details) {
                                              print('Pan Started: $details');
                                            },

                                            onLongPressUp: () {
//                                              setState(() {
//                                                tile3 = false;
//                                              });
                                              print('Long press up ');
                                            },
                                            child: tile3 == true
                                                ? _buildListTileLong(
                                                    context,
                                                    '12',
                                                    'Phone Battery 10',
                                                    size,3)
                                                : option3 == true? _buildListTile(
                                                    context,
                                                    '12',
                                                    'Phone Battery 10',
                                                    '\$12',
                                                    size,
                                                    3,'(\$8.00 off)'):_buildListTile(
                                                context,
                                                '12',
                                                'Phone Battery 10',
                                                '\$12',
                                                size,
                                                3,''),
                                          )

//                                    Align(
//                                      alignment: FractionalOffset.bottomCenter,
//                                        child: Text('here we go'))
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              _buildMiddleColumRightBrown(
                                                  context, size, Colors.amber),
                                            ],
                                          ),
                                        ),
                                        buildListTileBottom(
                                            'Total =', '\$24', size)
                                      ],
                                    )
                                  ],
                                ),
                              ),

//                        child: Column(
//                          children: <Widget>[
//                            Padding(
//                              padding: const EdgeInsets.only(
//                                  left: 16, right: 16, top: 8),
//                              child: Row(
//                                children: <Widget>[
//                                  Text(
//                                    'Products',
//                                    style: TextStyle(fontSize: size),
//                                  ),
//                                  Icon(
//                                    Icons.keyboard_arrow_down,
//                                    size: size * 2,
//                                  ),
//                                  Expanded(child: Container()),
//                                  Text(
//                                    '#',
//                                    style: TextStyle(fontSize: size),
//                                  ),
//                                  Padding(
//                                    padding: const EdgeInsets.only(
//                                        left: 16, right: 16),
//                                    child: Text(
//                                      'Price',
//                                      style: TextStyle(fontSize: size),
//                                    ),
//                                  ),
//                                  Text(
//                                    'Total',
//                                    style: TextStyle(fontSize: size),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.only(
//                                  left: 16, right: 16, top: 8, bottom: 16),
//                              child: Card(
//                                child: Container(
//                                  height: height * 2.5,
//                                  color: Colors.grey,
//                                  child: Column(
//                                    children: <Widget>[
//                                      Padding(
//                                        padding: const EdgeInsets.all(8.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text(
//                                              'Tenders theme and garlic',
//                                              style: TextStyle(fontSize: size),
//                                            ),
//                                            Expanded(child: Container()),
//                                            Text(
//                                              '#',
//                                              style: TextStyle(fontSize: size),
//                                            ),
//                                            Padding(
//                                              padding: const EdgeInsets.only(
//                                                  left: 16, right: 16),
//                                              child: Text(
//                                                'Price',
//                                                style:
//                                                    TextStyle(fontSize: size),
//                                              ),
//                                            ),
//                                            Text(
//                                              'Total',
//                                              style: TextStyle(fontSize: size),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                      Divider(
//                                        height: 0,
//                                      ),
//                                      Expanded(child: Container()),
//                                      Padding(
//                                        padding: const EdgeInsets.all(16.0),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Container(
//                                              child: Icon(
//                                                Icons.keyboard_arrow_up,
//                                                size: size * 2,
//                                                color: Colors.white,
//                                              ),
//                                              height: size * 3,
//                                              width: size * 3,
//                                              color:
//                                                  Colors.black.withOpacity(0.2),
//                                            ),
//                                            Expanded(child: Container()),
//                                            Container(
//                                              child: Icon(
//                                                Icons.keyboard_arrow_down,
//                                                size: size * 2,
//                                                color: Colors.white,
//                                              ),
//                                              height: size * 3,
//                                              width: size * 3,
//                                              color:
//                                                  Colors.black.withOpacity(0.2),
//                                            ),
//                                          ],
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Padding(
//                              padding:
//                                  const EdgeInsets.only(left: 16, right: 16),
//                              child: Container(
//                                color: Colors.blueGrey,
//                                child: Padding(
//                                  padding: const EdgeInsets.all(8.0),
//                                  child: Row(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      // blue area here
//                                      children: _buildBlueArea(size)),
//                                ),
//                              ),
//                            ),
//                            Expanded(
//                              child: Padding(
//                                padding: const EdgeInsets.all(16.0),
//                                child: Row(
//                                  mainAxisAlignment:
//                                      MainAxisAlignment.spaceEvenly,
//                                  children: <Widget>[
//                                    Column(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      children: <Widget>[
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '7',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '4',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '3',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Colors.red,
//                                            child: Center(
//                                                child: Text(
//                                              'Cancel',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Column(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      children: <Widget>[
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '8',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '5',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '2',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '0',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Column(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      children: <Widget>[
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '9',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '6',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '1',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Color(0xFFE6E6E6),
//                                            child: Center(
//                                                child: Text(
//                                              '00',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                    Column(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      children: <Widget>[
//                                        Card(
//                                          child: Container(
//                                            color: Colors.brown,
//                                            child: Center(
//                                                child: Text(
//                                              'Clear',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Colors.black,
//                                            child: Center(
//                                                child: Text(
//                                              '-',
//                                              style: TextStyle(
//                                                  fontSize: size * 2,
//                                                  color: Colors.white),
//                                            )),
//                                            height: height,
//                                            width: height,
//                                          ),
//                                        ),
//                                        Card(
//                                          child: Container(
//                                            color: Colors.orange,
//                                            child: Center(
//                                                child: Text(
//                                              'Enter',
//                                              style: TextStyle(fontSize: size),
//                                            )),
//                                            height: height * 2,
//                                            width: height,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ),
//                            Row(
//                                mainAxisAlignment:
//                                    MainAxisAlignment.spaceAround,
//                                children: _buildAddButtonRow(size, height)),
//                          ],
//                        ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                _buildAddButtonRow(
                                    size, height, '%', Colors.blueGrey),
                                _buildAddButtonRow(
                                    size, height, 'PARK', Colors.blue),
                                _buildAddButtonRow(
                                    size, height, 'CANCEL', Colors.red),
                                _buildAddButtonRow(size, height,
                                    'VALIDER ENCAISSER', Colors.green),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showbuttons() {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.cancel),
            Icon(Icons.mode_edit),
            Icon(Icons.format_paint)
          ],
        )
      ],
    );
  }

  _toolBar() {
    print('I got called');
    return Stack(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(Icons.edit),
          Icon(Icons.edit),
          Icon(Icons.edit),
          Icon(Icons.edit),
        ],
      )
    ]);
  }

  Color myColor = Colors.lightBlueAccent;

  bool tile1 = false, tile2 = false, tile3 = false, option1=false, option2 = false, option3=false;

  _buildListTile(BuildContext context, leading, title, trailing, size, index, end) {
    ListTile listtile = ListTile(
      leading: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(leading, style: TextStyle(fontSize: size)),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: size),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

          Text(trailing, style: TextStyle(fontSize: size)),
          Text(end,style: TextStyle(fontSize: size,color: Colors.red,))
        ],
      ),
    );
//    ListTile row= ListTile(
//      leading: Icon(Icons.edit),
//      title: Text('helo'),
//      trailing:Text('vaio')
//    );
    bool options = true;
    return Card(color: Colors.white70, child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: listtile,
    ));
  }

  _showDialog(BuildContext context,tile) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.white,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: (){
                  setState(() {

                    if(tile==1)
                      option1=true;
                    if(tile==2)
                      option2=true;
                    if(tile==3)
                      option3=true;
                    print(tile);
                    Navigator.pop(context);
                  });
                },
                child:Text('Ok'),
              )
            ],
          );
        });
  }

  _buildListTileLong(BuildContext context, leading, title, size,tile) {
    return Card(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(leading, style: TextStyle(fontSize: size)),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: size),
              ),
              Row(
                children: <Widget>[
                  Card(
                    color: Colors.green,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context,tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context,tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.linear_scale,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.amber,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context,tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context,tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  buildListTileBottom(title, trailing, size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text(''),
              title: Text(
                title,
                style: TextStyle(
                    fontSize: size + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
              trailing: Text(trailing,
                  style: TextStyle(
                      fontSize: size * 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700])),
            ),
          )),
    );
  }

  _buildBlueArea(size) {
    var labels = ['Graduity', 'Service', 'Tax', 'Total'];
    var prices = ['0.00', '0.00', '8.20', '9.20'];
    List<Widget> blueAreaItems = List();
    for (int i = 0; i < 4; i++) {
      blueAreaItems.add(Column(
        children: <Widget>[
          Text(
            labels[i],
            style: TextStyle(
                fontSize: size,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            prices[i],
            style: TextStyle(
              fontSize: size,
              color: Colors.white,
            ),
          ),
        ],
      ));
    }
    return blueAreaItems;
  }

  _buildAddButtonRow(size, height, title, color) {
//    List<Widget> buttonRow = List();
//
//    for (int i = 0; i < 4; i++) {
//      buttonRow.add(
//        Card(
//          child: Container(
//            color: Colors.orange,
//            child: Center(
//                child: Text(
//              'Add Button',
//              style: TextStyle(fontSize: size / 1.5, color: Colors.black),
//            )),
//            height: height / 1.5,
//            width: height,
//          ),
//        ),
//      );
//    }
//
//    return buttonRow;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: color,
        child: Center(
            child: Text(
          '$title',
          style: TextStyle(fontSize: size, color: Colors.white),
              textAlign: TextAlign.center,
        )),
        height: height / 1.2,
        width: height * 1.2,
      ),
    );
  }
}
