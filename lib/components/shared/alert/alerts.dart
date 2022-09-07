import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Alerts {
  static info({
    required String message,
    required BuildContext context,
  }) async {
    _alertInFuture(() async {
      await _alert(
        context: context,
        message: message,
        baseColor: Colors.blue[300]!,
        icon: Icons.info_outline,
      ).show(context);
    });
  }

  static success({
    required String message,
    required BuildContext context,
  }) async {
    _alertInFuture(() async {
      await _alert(
        context: context,
        message: message,
        baseColor: Colors.green[300]!,
        icon: Icons.check_circle,
      ).show(context);
    });
  }

  static failed({
    required String message,
    required BuildContext context,
  }) async {
    _alertInFuture(() async {
      await _alert(
        context: context,
        message: message,
        baseColor: Colors.red[300]!,
        icon: Icons.warning_amber_outlined,
      ).show(context);
    });
  }

  static _alertInFuture(alert, {int? seconds}) {
    Future.delayed(Duration(seconds: seconds ?? 1), alert);
  }

  static Flushbar _alert({
    required BuildContext context,
    required String message,
    required Color baseColor,
    required IconData icon,
  }) {
    return Flushbar(
      message: message,
      icon: Icon(icon, size: 28.0, color: baseColor),
      margin: const EdgeInsets.all(6.0),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: baseColor,
      borderRadius: BorderRadius.circular(12),
      maxWidth: 300,
      duration: const Duration(seconds: 3),
      leftBarIndicatorColor: baseColor,
    );
  }
}
