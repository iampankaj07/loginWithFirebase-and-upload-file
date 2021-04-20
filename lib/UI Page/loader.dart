import 'package:flutter/material.dart';
import 'package:test_task/UI%20Page/Loadercomp.dart';

class Loader {
  OverlayEntry _overlayEntry;
  OverlayState _overlayState;

  show(BuildContext context) async {
    _overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        child: LoaderComponent(),
      ),
    );
    _overlayState.insert(_overlayEntry);
  }

  hide() {
    try {
      _overlayEntry?.remove();
    } catch (e) {
      print(e);
    }
  }
}
