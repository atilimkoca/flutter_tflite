import 'package:flutter/material.dart';

import 'model.dart';

class Clasifier extends StatefulWidget {
  const Clasifier({Key? key}) : super(key: key);

  @override
  _ClasifierState createState() => _ClasifierState();
}

class _ClasifierState extends State<Clasifier> {
  late Model model;
  

  @override
  void initState() {
    super.initState();
    model = Model();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
