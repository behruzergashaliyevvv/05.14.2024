// import 'package:dars/pages/home_page.dart';
import 'package:dars/widgets/ladscape_widget.dart';
import 'package:dars/widgets/portret_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: orientation == Orientation.portrait
            ? AppHomePortrait()
            : AppHomeLadscape(),
            
        backgroundColor: Colors.blue[600],
        //
      ),
      body: Center(
        child: SingleChildScrollView(
            child: orientation == Orientation.portrait
                ? BoxsesColumn()
                : BoxesRow()),
      ),
    );
  }
}
