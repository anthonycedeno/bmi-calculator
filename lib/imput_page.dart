import "package:flutter/material.dart";

class ImputPage extends StatefulWidget {
  @override
  _ImputPageState createState() => _ImputPageState();
}

class _ImputPageState extends State<ImputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(child: Row(children: [
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33),),),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33),),),
        ],),),
        Expanded(child: ReusableCard(color: Color(0xFF1D1E33),),),
        Expanded(child: Row(children: [
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33),),),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33),),),
        ],),),
      ],)
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0)),
      );
  }
}