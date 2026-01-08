import 'package:app_twins/utils/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twins APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(),
      ),
      // home: const HomePage(title: 'Teste do scaffold'),
      home: HomePage(title: "Home"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuController menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomContainer(
              borderColor: Colors.red,
              labelText: "Apresentação do designer",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children: [
                customButton(labelText: "Voltar"),
                customButton(labelText: "Continuar"),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(child: Text("Teste de entrada"));
              },
              separatorBuilder: (sepContext, sepIndex) {
                return Container(child: Text("Teste de saída"));
              },
              itemCount: 1,
            ),
          ],
        ),
      ),
    );
  }
}
