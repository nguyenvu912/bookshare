import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:bookshare/screen/home_page/search_page/search_page.dart';
import 'package:flutter/material.dart';

class SearchHomeWidget extends StatefulWidget {
  const SearchHomeWidget({Key? key}) : super(key: key);

  @override
  State<SearchHomeWidget> createState() => _SearchHomeWidgetState();
}

class _SearchHomeWidgetState extends State<SearchHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchPage()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: MediaQuery.of(context).size.width - 32,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.main),
            borderRadius: BorderRadius.circular(100)),
        child: GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.search,
                  color: AppColors.main,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Tìm kiếm...',
                style: AppTextStyle.hintText(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
