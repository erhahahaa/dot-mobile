import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Parent extends StatefulWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool avoidBottomInset;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final Key? scaffoldKey;
  final bool resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final bool extendBody;
  final Widget? endDrawer;

  const Parent({
    super.key,
    this.body,
    this.appBar,
    this.avoidBottomInset = true,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.scaffoldKey,
    this.resizeToAvoidBottomInset = true,
    this.extendBodyBehindAppBar = false,
    this.extendBody = true,
    this.endDrawer,
  });

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent>
    with WidgetsBindingObserver, FirebaseCrashLogger {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    try {
      if (state == AppLifecycleState.resumed ||
          state == AppLifecycleState.inactive) {
        FocusManager.instance.primaryFocus?.unfocus();
        context.read<UserCubit>().getNotification();
      }
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: widget.scaffoldKey,
        appBar: widget.appBar,
        body: widget.body,
        floatingActionButton: widget.floatingActionButton,
        bottomNavigationBar: widget.bottomNavigationBar,
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        extendBody: widget.extendBody,
        endDrawer: widget.endDrawer,
      ),
    );
  }
}
