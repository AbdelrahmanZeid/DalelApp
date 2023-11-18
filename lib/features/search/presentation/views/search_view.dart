import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController searchControler;

  @override
  void initState() {
    searchControler = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    searchControler.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 36,
          ),
          Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              Expanded(
                child: CustomSearchTextField(
                  searchControler: searchControler,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            AppStrings.recent,
            style: AppTextStyle.onBoardingTitleStyle().copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.searchControler});
  final TextEditingController searchControler;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchControler,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
        fillColor: AppColor.primaryColor,
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: AppColor.white,
        ),
        hintText: AppStrings.searchDeepIntoTheHistory,
        hintStyle: TextStyle(
          color: AppColor.white,
        ),
      ),
    );
  }
}
