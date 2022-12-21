import 'dart:html';

import 'package:simple_dart_image/simple_dart_image.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class ImageButton extends Image with MixinDisable {
  ImageButton() : super() {
    addCssClass('ImageButton');
  }

  Stream<MouseEvent> get onClick => element.onClick.where((event) => !disabled);

  set tooltip(String tooltip) {
    element.title = tooltip;
  }

  String get tooltip => element.title ?? '';
}
