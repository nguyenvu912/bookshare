import 'package:bookshare/app/constant/constant_barrel.dart';
import 'package:bookshare/screen/common_widget/item_book_detail.dart';
import 'package:flutter/material.dart';

class TabBookDetail extends StatefulWidget {
  const TabBookDetail({Key? key}) : super(key: key);

  @override
  State<TabBookDetail> createState() => _TabBookDetailState();
}

class _TabBookDetailState extends State<TabBookDetail> {
  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>[
      'Lập trình Ứng dụng mạng',
      'Trí tuệ nhân tạo',
      'Mô hình hoá - Mô phỏng',
      'Lập trình Hệ thống mạng',
      'Lập trình C++',
      'Ngoại ngữ',
      'An ninh mạng',
      'Logic mờ - Điều khiển mờ'
    ];
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
                                return const ItemBookDetail();
                              },
                              childCount: 1,
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
