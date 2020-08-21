// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoppingappsampleflutter/ui/widgets/drawer_stack.dart';
import 'package:shoppingappsampleflutter/ui/widgets/menu-drawer.dart';

extension WidgetExtensions on Widget {
  centered() {
    return Center(
      child: this,
    );
  }

  withMenuDrawer() {
    return DrawerStack(
      drawer: MenuDrawer(),
      body: this,
    );
  }
}
