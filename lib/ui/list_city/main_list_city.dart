import 'package:flutter/material.dart';
import 'package:resik_homestay/ui/list_city/appbar_main_list_cty.dart';
import 'package:resik_homestay/ui/list_city/body_main_list_city.dart';

class MainListCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
            child: AppBarMainListCity(),
            preferredSize: const Size.fromHeight(50.0)),
      body: BodyMainListCity()
    );
  }
}
