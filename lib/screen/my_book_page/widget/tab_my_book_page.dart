import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/screen/common_widget/item_book_detail.dart';
import 'package:flutter/material.dart';

class TabMyBookPage extends StatelessWidget {
  const TabMyBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>['Đã cho mượn', 'Chưa cho mượn'];
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  toolbarHeight: 0,
                  floating: true,
                  pinned: true,
                  snap: false,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                    indicatorColor: AppColors.white,
                    unselectedLabelColor: AppColors.grey36,
                    labelColor: AppColors.white,
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return Column(
                                  children: const [
                                    ItemBookDetail(),
                                    SizedBox(height: 12),
                                  ],
                                );
                              },
                              childCount: 7,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
