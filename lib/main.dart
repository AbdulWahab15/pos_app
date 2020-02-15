import 'package:flutter/material.dart';

import 'left_column.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Widget> _buildMiddleColumRowYellow(BuildContext context) {
    List<Widget> boxes = List();
    double width = ((MediaQuery.of(context).size.width / 2) / 6) - 16;
    double height = (MediaQuery.of(context).size.height / 10) - 8;
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
    double width = ((MediaQuery.of(context).size.width / 2) / 5) - 16;
    double height = (MediaQuery.of(context).size.height / 8) - 8;
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

  List<Widget> _buildMiddleColumRowWhiteSlim(BuildContext context) {
    List<Widget> boxes = List();
    double width = ((MediaQuery.of(context).size.width / 2) / 5) - 16;
    double height = (MediaQuery.of(context).size.height / 10) - 8;
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

  List<Widget> _buildMiddleColumRowBrown(BuildContext context) {
    List<Widget> boxes = List();
    double width = ((MediaQuery.of(context).size.width / 2) / 5) - 16;
    double height = (MediaQuery.of(context).size.height / 10) - 8;
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
                size: 48,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 48,
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

  Widget _buildTaskbar() {
    List<String> options = <String>['Mega', 'item2', 'item3'];
    String dropdownValue = 'Mega';
    return Row(
      children: <Widget>[
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text('Remark'),
        ),
        IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: DropdownButton(
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
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
        Text('ENG'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
          ),
        ),
        IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
        IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
        IconButton(icon: Icon(Icons.email), onPressed: () {}),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = (1 / 100) * (MediaQuery.of(context).size.width);
    double height = (MediaQuery.of(context).size.height / 10);
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //Taskbar
            Container(height: 48, color: Colors.white, child: _buildTaskbar()),
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
                    flex: 3,
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
                            children: _buildMiddleColumRowBrown(context),
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _buildMiddleColumRowWhiteSlim(context),
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
                              padding: const EdgeInsets.all(16.0),
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
                              padding: const EdgeInsets.all(16.0),
                              child: Card(
                                child: Container(
                                  height: height * 3,
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
}
