import 'package:flutter/material.dart';
import 'package:flutter_app/category.dart';
import 'package:flutter_app/unit.dart';


final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {


  var appBar, listView;

  static const _categoryName = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];


  /// Makes the correct number of rows for the list view.
  ///
  /// For portrait, we use a [ListView].

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }




  /// Returns a list of mock [Unit]s.
  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final categories = <Category>[];

    for (var i = 0; i < _categoryName.length; i++) {
      var name = _categoryName[i];

      categories.add(Category(
        name: _categoryName[i],
        color: _baseColors[i],
        // ignore: undefined_getter
        iconLocation: Icons.cake  ,
        units: _retrieveUnitList(name),
      ));

      listView = Container(
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: _buildCategoryWidgets(categories),
      );

      appBar = AppBar(
        elevation: 0.0,
        title: Text(
          'Unit Conerter',
          style: TextStyle(color: Colors.black, fontSize: 30.0),
        ),
        centerTitle: true,
      );
    }
    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
