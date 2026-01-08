import 'package:app_twins/utils/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuController menuController = MenuController();
  final Map<int, bool> dictContainerColor = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    String labelChild = index >= 1 ? "Crianças" : "Criança";
                    dictContainerColor.putIfAbsent(index, () => false);
                    List<Color> colorBorderContainer = [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                      Colors.orange,
                    ];
                    return CustomContainer(
                      borderColor: colorBorderContainer[index],
                      labelText: "${index + 1} $labelChild",
                      indexColorRadient: dictContainerColor,
                      
                    );
                  },
                  separatorBuilder: (sepContext, sepIndex) {
                    return SizedBox(height: 40);
                  },
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    customButton(
                      labelText: "Voltar",
                      onPressed: () => print("Voltado"),
                    ),
                    customButton(
                      labelText: "Continuar",
                      onPressed: () => print("Continuado"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
