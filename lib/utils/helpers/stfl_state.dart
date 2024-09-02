import 'dart:async';

import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  late UserModel _user;

  late final ScrollController _scrollController;
  late final SearchController _searchController;
  final List<StreamSubscription> _streamSubscription = [];

  bool showScrollToTopButton = false;

  ScrollController get scrollController => _scrollController;
  SearchController get searchController => _searchController;

  UserModel get user => _user;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchController = SearchController();

    _scrollController.addListener(_scrollListener);

    addSubscription(context.read<UserBloc>().stream.listen((state) {
      final internalUser = state.whenOrNull(success: (user, __) => user);
      safeSetState(() {
        _user = internalUser ?? const UserModel();
      });
    }));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();

    for (final sub in _streamSubscription) {
      sub.cancel();
    }

    super.dispose();
  }

  void addSubscription(StreamSubscription sub) {
    _streamSubscription.add(sub);
  }

  void scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void addListenerToScrollController(VoidCallback listener) {
    _scrollController.addListener(listener);
  }

  void _scrollListener() {
    final height = MediaQuery.of(context).size.height;
    if (_scrollController.offset > (height / 3) && !showScrollToTopButton) {
      setState(() {
        showScrollToTopButton = true;
      });
    } else if (_scrollController.offset <= (height / 3) &&
        showScrollToTopButton) {
      setState(() {
        showScrollToTopButton = false;
      });
    }
  }

  void clearSearch() {
    _searchController.clear();
  }

  void safeSetState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    } else {
      fn();
    }
  }
}
