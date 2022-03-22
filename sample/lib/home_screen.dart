import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selected;
  //attention
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short Product"),
      ),
      body: ListView.builder(
        key: Key('builder ${selected.toString()}'), //attention
        itemCount: 10,
        itemBuilder: (context, i) {
          return ExpansionTile(
              key: Key(i.toString()), //attention
              initiallyExpanded: i == selected, //attention
              title: Text(i.toString()),
              children: _Product_ExpandAble_List_Builder(),
              onExpansionChanged: ((newState) {
                if (newState)
                  setState(() {
                    selected = i;
                  });
                else
                  setState(() {
                    selected = -1;
                  });
              }));
        },
      ),
    );
  }

  _Product_ExpandAble_List_Builder() {
    List<Widget> columnContent = [];
    [1, 2, 4, 5, 6, 7, 8, 9].forEach((product) => {
          columnContent.add(
            ListTile(
              title: ExpansionTile(
                title: Text(product.toString()),
              ),
              trailing: Text("$product (Kg)"),
            ),
          ),
        });
    return columnContent;
  }
}
