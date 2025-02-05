import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json/example_date.dart';
import 'package:json/human.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: JsonExampleProvider(
          coder:JsonExampleCoder(),
           child: ButtonWidget()
           )
        ),
    );
  }
}


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: JsonExampleProvider.read(context)?.coder.encode, child: const Text('Kodiravot')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: JsonExampleProvider.read(context)?.coder.decode, child: const Text('dekodiravot'))
        ],
      ),
    );
  }
}

class JsonExampleProvider extends InheritedWidget{
  final JsonExampleCoder coder;
  const JsonExampleProvider({
    Key? key,
    required this.coder,
    required Widget child,

  }) : super(key: key,child: child);

  static JsonExampleProvider? watch(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<JsonExampleProvider>();
  }

  static JsonExampleProvider? read(BuildContext context) {
    final widget = context
    .getElementForInheritedWidgetOfExactType<JsonExampleProvider>()
    ?.widget;

    return widget is JsonExampleProvider ? widget : null;
  }
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    
    throw UnimplementedError();
  }

}

class JsonExampleCoder{
  void encode(){
    final object = humans.map((e) => e.toJson()).toList();
    final jsonString = jsonEncode(object);
    print(jsonString);
  }

  void decode(){
    final dynamic json = jsonDecode(jsonSrring)as List<dynamic>;
    final humans = json
    .map((dynamic e) =>Human.fromJson(e as Map<String, dynamic>))
    .toString();
    print(humans);
  }
}

