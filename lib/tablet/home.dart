import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'left_column.dart';

class HomePage extends StatelessWidget {
  List<Widget> _buildMiddleColumRowYellow(BuildContext context) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2) - 8;
    for (int i = 0; i < 6; i++) {
      boxes.add(Card(
        child: Container(
          width: width,
          height: height,
          color: Colors.orange,
        ),
      ));
    }
    return boxes;
  }

  List<Widget> _buildMiddleColumRowWhite(BuildContext context) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 10) - 8;
    double width = (height * 2) - 8;
    for (int i = 0; i < 5; i++) {
      boxes.add(Card(
        child: Container(
          width: width,
          height: height,
          color: Colors.white,
        ),
      ));
    }
    return boxes;
  }

  List<Widget> _buildMiddleColumRowWhiteSlim(
      BuildContext context, Color tileColor) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2);
    for (int i = 0; i < 5; i++) {
      boxes.add(Card(
        child: Container(
          width: width,
          height: height,
          color: tileColor,
        ),
      ));
    }
    return boxes;
  }

  List<Widget> _buildMiddleColumRowBrown(BuildContext context, size) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 12) - 8;
    double width = (height * 2);
    for (int i = 0; i < 4; i++) {
      boxes.add(Card(
        child: Container(
          width: width,
          height: height,
          color: Colors.brown,
        ),
      ));
    }
    boxes.add(Card(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                Icons.arrow_back_ios,
                size: size * 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.arrow_forward_ios,
                size: size * 2,
              ),
            ),
          ],
        ),
        width: width,
        height: height,
        color: Colors.white,
      ),
    ));
    return boxes;
  }

  Widget _buildTaskbar(size) {
    List<String> options = <String>['Mega', 'item2', 'item3'];
    String dropdownValue = 'Mega';
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: IconButton(icon: Icon(Icons.format_align_right,color: Colors.amberAccent,size: size,), onPressed: () {}),
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
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,
            child: OutlineButton(

              child: Text('Button',style: TextStyle(color: Colors.grey),),
              color:Colors.grey,

              borderSide: BorderSide(
                  color:Colors.grey,
                  style: BorderStyle.solid,
                  width: 0.8

              ),
              onPressed: (){

              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,

            child: OutlineButton(
              child: Text('Button',style: TextStyle(color: Colors.amberAccent),),
              color:Colors.amberAccent,
              borderSide: BorderSide(
                  color:Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 0.8


              ),
              onPressed: (){

              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,

            child: OutlineButton(
              child: Text('Button',style: TextStyle(color: Colors.red),),
              color:Colors.red,
              borderSide: BorderSide(
                  color:Colors.red,
                  style: BorderStyle.solid,
                  width: 0.8

              ),
              onPressed: (){

              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,

            child: OutlineButton(
              child: Icon(Icons.notifications,color: Colors.grey,),
              color:Colors.grey,
              borderSide: BorderSide(
                  color:Colors.grey,
                  style: BorderStyle.solid,
                  width: 0.8

              ),
              onPressed: (){

              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,

            child: OutlineButton(
              child: Icon(Icons.person_outline,color:Colors.amberAccent),
              borderSide: BorderSide(
                  color:Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 0.8

              ),
              color:Colors.amberAccent,
              onPressed: (){

              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Container(
            height: 45,

            child: OutlineButton(
              child: Icon(Icons.power_settings_new,color: Colors.red,),
              color:Colors.red,
              borderSide: BorderSide(
                  color:Colors.red,
                  style: BorderStyle.solid,
                  width: 0.8


              ),
              onPressed: (){

              },
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
                  //Middle Column
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowYellow(context),
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
                            children: _buildMiddleColumRowBrown(context, size),
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            bottom: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowWhiteSlim(
                                context, Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowWhiteSlim(
                                context, Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Right Column
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 8),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Products',
                                    style: TextStyle(fontSize: size),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: size * 2,
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    '#',
                                    style: TextStyle(fontSize: size),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Text(
                                      'Price',
                                      style: TextStyle(fontSize: size),
                                    ),
                                  ),
                                  Text(
                                    'Total',
                                    style: TextStyle(fontSize: size),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 8, bottom: 16),
                              child: Card(
                                child: Container(
                                  height: height * 2.5,
                                  color: Colors.grey,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              'Tenders theme and garlic',
                                              style: TextStyle(fontSize: size),
                                            ),
                                            Expanded(child: Container()),
                                            Text(
                                              '#',
                                              style: TextStyle(fontSize: size),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16, right: 16),
                                              child: Text(
                                                'Price',
                                                style:
                                                    TextStyle(fontSize: size),
                                              ),
                                            ),
                                            Text(
                                              'Total',
                                              style: TextStyle(fontSize: size),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 0,
                                      ),
                                      Expanded(child: Container()),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Icon(
                                                Icons.keyboard_arrow_up,
                                                size: size * 2,
                                                color: Colors.white,
                                              ),
                                              height: size * 3,
                                              width: size * 3,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                            Expanded(child: Container()),
                                            Container(
                                              child: Icon(
                                                Icons.keyboard_arrow_down,
                                                size: size * 2,
                                                color: Colors.white,
                                              ),
                                              height: size * 3,
                                              width: size * 3,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Container(
                                color: Colors.blueGrey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // blue area here
                                      children: _buildBlueArea(size)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '7',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '4',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '3',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Colors.red,
                                            child: Center(
                                                child: Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '8',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '5',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '2',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '0',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '9',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '6',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '1',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Color(0xFFE6E6E6),
                                            child: Center(
                                                child: Text(
                                              '00',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            color: Colors.brown,
                                            child: Center(
                                                child: Text(
                                              'Clear',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Colors.black,
                                            child: Center(
                                                child: Text(
                                              '-',
                                              style: TextStyle(
                                                  fontSize: size * 2,
                                                  color: Colors.white),
                                            )),
                                            height: height,
                                            width: height,
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            color: Colors.orange,
                                            child: Center(
                                                child: Text(
                                              'Enter',
                                              style: TextStyle(fontSize: size),
                                            )),
                                            height: height * 2,
                                            width: height,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: _buildAddButtonRow(size, height)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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

  _buildAddButtonRow(size, height) {
    List<Widget> buttonRow = List();

    for (int i = 0; i < 4; i++) {
      buttonRow.add(
        Card(
          child: Container(
            color: Colors.orange,
            child: Center(
                child: Text(
              'Add Button',
              style: TextStyle(fontSize: size / 1.5, color: Colors.black),
            )),
            height: height / 1.5,
            width: height,
          ),
        ),
      );
    }

    return buttonRow;
  }
}
