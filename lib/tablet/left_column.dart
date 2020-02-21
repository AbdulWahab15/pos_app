import 'package:flutter/material.dart';

import 'home.dart';

class LeftColumn extends StatelessWidget {
  final int selectedIndex;
  const LeftColumn({
    Key key,
    this.selectedIndex = 0,
  }) : super(key: key);

  List<Widget> _buildSideMenu(BuildContext context) {
    double width = (2 / 100) * (MediaQuery.of(context).size.width);
    double size = (1 / 100) * (MediaQuery.of(context).size.width);
    List<Widget> menuItems = List();
    menuItems.add(
      Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          children: <Widget>[
            Text(
              'CONNECTIONS',
              style: TextStyle(fontSize: size - 2),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Container(
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '71',
                      style: TextStyle(fontSize: size - 2),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
    menuItems.add(
      Card(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                Icons.search,
                size: size,
              ),
            ),
            Text(
              'Search',
              style: TextStyle(fontSize: size),
            ),
          ],
        ),
      ),
    );

    var labels = [
      'Dashboard',
      'Layout',
      'Pages',
      'Basic UI',
      'Advance UI',
      'Structure',
      'Widgets',
      'Forms',
      'Tables',
      'More Features',
    ];
    var icons = [
      Icons.view_compact,
      Icons.layers,
      Icons.pages,
      Icons.format_paint,
      Icons.format_shapes,
      Icons.format_strikethrough,
      Icons.widgets,
      Icons.chrome_reader_mode,
      Icons.table_chart,
      Icons.control_point_duplicate,
    ];

    for (int i = 0; i < labels.length; i++) {
      menuItems.add(GestureDetector(
        onTap: () {
          if (i == 0) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
          } else {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SafeArea(
                      child: Material(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LeftColumn(
                                selectedIndex: i,
                              ),
                            )),
                            Expanded(flex: 4, child: Container()),
                            Expanded(flex: 2, child: Container()),
                          ],
                        ),
                      ),
                    )));
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icons[i],
              size: size + 8,
              color: selectedIndex == i ? Colors.orange : Colors.black,
            ),
            Text(
              labels[i],
              style: TextStyle(
                fontSize: size,
                color: selectedIndex == i ? Colors.orange : Colors.black,
              ),
            ),
          ],
        ),
      ));
    }
    menuItems.add(Column(
      children: <Widget>[
        Text(
          'Theme',
          style: TextStyle(fontSize: size),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: size + 8,
              width: size + 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                color: Colors.black,
                height: size + 8,
                width: size + 16,
              ),
            ),
          ],
        )
      ],
    ));
    menuItems.add(
      Container(
        height: 10,
      ),
    );
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    double width = (2 / 100) * (MediaQuery.of(context).size.width);
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _buildSideMenu(context),
        ),
      ),
    );
  }
}
