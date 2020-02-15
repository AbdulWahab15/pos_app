import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({
    Key key,
  }) : super(key: key);

  List<Widget> _buildSideMenu(BuildContext context) {
    List<Widget> menuItems = List();
    menuItems.add(
      Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          children: <Widget>[
            Text('CONNECTIONS'),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Container(
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('71'),
                  )),
            )
          ],
        ),
      ),
    );
    menuItems.add(
      Card(
        child: ListTile(
          leading: Icon(Icons.search),
          title: Text('Search connections'),
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
      'More Features'
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
      Icons.control_point_duplicate
    ];
    double width = (2 / 100) * (MediaQuery.of(context).size.width);
    for (int i = 0; i < labels.length; i++) {
      menuItems.add(Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icons[i],
            size: width,
          ),
          Text(labels[i]),
        ],
      ));
    }
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
