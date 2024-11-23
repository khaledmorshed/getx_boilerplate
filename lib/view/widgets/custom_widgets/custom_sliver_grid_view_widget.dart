import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CustomSliverGridViewWidget extends StatefulWidget {
  final Function? fetchData;
  final Function? containerOnTap;
  final List<dynamic> items;
  final bool isLoading;
  final dynamic loadingWidget;
  final ScrollController scrollController;

  const CustomSliverGridViewWidget({
    this.fetchData,
    required this.items,
    required this.isLoading,
    this.loadingWidget,
    required this.scrollController,
    this.containerOnTap,
    super.key
  });

  @override
  State<CustomSliverGridViewWidget> createState() => _CustomSliverGridViewWidgetState();
}

class _CustomSliverGridViewWidgetState extends State<CustomSliverGridViewWidget> {


  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (widget.scrollController.position.pixels == widget.scrollController.position.maxScrollExtent && !widget.isLoading) {
      if(widget.fetchData != null) widget.fetchData!();
    }
  }


  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverMasonryGrid(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return  GestureDetector(
                onTap: (){
                  if(widget.containerOnTap != null) widget.containerOnTap!();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.items[index],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        if (index % 2 == 1)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(5, (i) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "${widget.items[index]} - Extra content $i",
                                  style: TextStyle(fontSize: 14),
                                ),
                              );
                            }),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: widget.items.length,
          ),
        ),
        if (widget.isLoading)
          Center(child: widget.loadingWidget),
          // SliverPositioned(
          //     bottom: 10,
          //     left: MediaQuery.of(context).size.width / 2,
          //     child: Center(child: widget.loadingWidget)
          // ),
        /*if(widget.isLoading)*/ SafeArea(top: false, child: SizedBox(),)
      ],
    );
  }
}
