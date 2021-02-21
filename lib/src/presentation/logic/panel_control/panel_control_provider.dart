import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constant.dart';

part 'panel_control_notifier.dart';

enum ControlPanelState { HIDE, EXPANDED, VISIBLE }

final panelControlNotifierProvider =
    ChangeNotifierProvider<ControlPanelNotifier>((ref) {
  return ControlPanelNotifier();
});
