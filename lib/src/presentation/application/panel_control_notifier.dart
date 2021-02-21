import 'package:cubapod/core/constant.dart';
import 'package:flutter/material.dart';

enum ControlPanelState { HIDE, EXPANDED, VISIBLE }

class ControlPanelNotifier extends ChangeNotifier {
  ControlPanelState controlPanelState = ControlPanelState.HIDE;

  void changeToVisble() {
    controlPanelState = ControlPanelState.VISIBLE;
    notifyListeners();
  }

  void changeToExpanded() {
    controlPanelState = ControlPanelState.EXPANDED;
    notifyListeners();
  }

  void changeToHide() {
    controlPanelState = ControlPanelState.HIDE;
    notifyListeners();
  }

  void onVerticalGesture(double primaryDelta) {
    if (primaryDelta < -9) {
      controlPanelState = ControlPanelState.EXPANDED;
      notifyListeners();
    } else if (primaryDelta > 15) {
      controlPanelState = ControlPanelState.VISIBLE;
      notifyListeners();
    }
  }

  double getBottomForListPage(
      ControlPanelState controlPanelState, double height) {
    if (controlPanelState == ControlPanelState.VISIBLE) {
      return kHeightBottomSheet;
    } else if (controlPanelState == ControlPanelState.HIDE) {
      return 0.0;
    } else if (controlPanelState == ControlPanelState.EXPANDED) {
      return height * 0.65;
    }
    return 0.0;
  }

  double getTopForPanelControl(
    ControlPanelState controlPanelState,
    double height,
    bool overMenu,
  ) {
    if (controlPanelState == ControlPanelState.VISIBLE) {
      return height - (kHeightBottomSheet * (overMenu ? 3 : 1));
    } else if (controlPanelState == ControlPanelState.HIDE) {
      return height;
    } else if (controlPanelState == ControlPanelState.EXPANDED) {
      return height * 0.18;
    }
    return 0.0;
  }
}
