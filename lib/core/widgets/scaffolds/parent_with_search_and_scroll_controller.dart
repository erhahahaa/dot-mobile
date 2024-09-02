

// class ParentWithSearchAndScrollController extends StatefulWidget {
//   final void Function(SearchController search, ScrollController scroll)? onInit;
//   final VoidCallback? initState;
//   final Widget Function(
//     BuildContext child,
//     SearchController search,
//     ScrollController scroll,
//     bool showScrollToTopButton,
//   ) builder;

//   const ParentWithSearchAndScrollController({
//     super.key,
//     this.onInit,
//     this.initState,
//     required this.builder,
//   });

//   @override
//   State<ParentWithSearchAndScrollController> createState() =>
//       _ParentWithSearchAndScrollControllerState();
// }

// class _ParentWithSearchAndScrollControllerState
//     extends State<ParentWithSearchAndScrollController> {
//   late final ScrollController _scrollController;
//   late final SearchController _searchController;
//   bool showScrollToTopButton = false;

//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController();
//     _searchController = SearchController();
//     if (widget.onInit != null) {
//       widget.onInit!(_searchController, _scrollController);
//     }
//     _scrollController.addListener(_scrollListener);
//     if (widget.initState != null) {
//       widget.initState!();
//     }
//   }

//   void _scrollListener() {
//     final height = MediaQuery.of(context).size.height;
//     if (_scrollController.offset > (height / 3) && !showScrollToTopButton) {
//       setState(() {
//         showScrollToTopButton = true;
//       });
//     } else if (_scrollController.offset <= (height / 3) &&
//         showScrollToTopButton) {
//       setState(() {
//         showScrollToTopButton = false;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.removeListener(_scrollListener);
//     _scrollController.dispose();
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.builder(
//       context,
//       _searchController,
//       _scrollController,
//       showScrollToTopButton,
//     );
//   }
// }
