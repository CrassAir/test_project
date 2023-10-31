import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyPage extends StatelessWidget {
  EmptyPage({Key? key}) : super(key: key);
  final platform = GetPlatform.isWeb;


  @override
  Widget build(BuildContext context) {
    double responsibleWidth = MediaQuery.of(context).size.width > 800 ? MediaQuery.of(context).size.width * 0.1 : 0;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: platform ? responsibleWidth : 0),
        child: Center(
          child: Text('Данных пока что нет', style: Theme.of(context).textTheme.headlineMedium),
        ),
      ),
    );
  }
}
