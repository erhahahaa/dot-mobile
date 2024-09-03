import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  late final ScrollController _scrollController;
  late final SearchController _searchController;

  bool showScrollToTopButton = false;

  ScrollController get scrollController => _scrollController;
  SearchController get searchController => _searchController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchController = SearchController();

    _scrollController.addListener(_scrollListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();

    super.dispose();
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
