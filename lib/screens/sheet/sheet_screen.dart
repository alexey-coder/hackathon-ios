import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/sheet/presets_container.dart';
import 'package:maps/screens/sheet/search_row.dart';
import 'package:maps/screens/sheet/search_row_info.dart';
import 'package:maps/screens/sheet/sheet_header.dart';
import 'package:provider/provider.dart';

class SheetScreen extends StatelessWidget {
  SheetScreen({super.key});

  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    var sheedProvider = context.watch<SheetProvider>();
    if (controller.isAttached) {
      sheedProvider.searchFocused || sheedProvider.searchText.isNotEmpty
          ? openSheet(sheedProvider)
          : hideSheet(sheedProvider);
    }
    return DraggableScrollableSheet(
        controller: controller,
        minChildSize: 0.1,
        initialChildSize: 0.1,
        maxChildSize: 0.9,
        snap: true,
        snapSizes: const [0.1, 0.6, 0.9],
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  controller: scrollController,
                  child: Column(children: [
                    const SheetHeader(),
                    buildBody(sheedProvider, scrollController)
                  ])));
        });
  }

  void openSheet(SheetProvider provider) {
    controller.animateTo(provider.searchText.isEmpty ? 0.8 : 0.95,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  void hideSheet(SheetProvider provider) {
    if (provider.searchText.isEmpty) {
      controller.animateTo(0.6,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  Widget buildBody(SheetProvider provider, ScrollController scrollController) {
    return Column(children: [
      if (provider.searchText.isEmpty)
        const Column(children: [
          SizedBox(height: 16),
          Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: PresetsContainer())
        ])
      else if (provider.searchFocused)
        Column(children: [
          SearchRow(viewModel: SearchRowViewModel(text: 'Арт Галерея Москва')),
          SearchRow(
              viewModel: SearchRowViewModel(
                  text:
                      'ГМИИ имени Пушкина, Галерея искусства стран Европы и Америки XIX – XX веков')),
          SearchRow(
              viewModel: SearchRowViewModel(
                  text:
                      'Государственная Третьяковская галерея, галерея Новая Третьяковка')),
          SearchRow(
              viewModel: SearchRowViewModel(text: 'Центр искусств Москва')),
          SearchRow(
              viewModel: SearchRowViewModel(
                  text:
                      'Московская государственная картинная галерея народного художника СССР Александра Шилова')),
          SearchRow(
              viewModel: SearchRowViewModel(
                  text: 'Первая Московская галерея восточной живописи')),
          SearchRow(viewModel: SearchRowViewModel(text: 'Галерея Fineart')),
          SearchRow(viewModel: SearchRowViewModel(text: 'HSE Art Gallery')),
          SearchRow(
              viewModel: SearchRowViewModel(text: 'Галерея Здесь на Таганке')),
          SearchRow(
              viewModel:
                  SearchRowViewModel(text: 'Галерея искусств Зураба Церетели'))
        ])
      else
        Column(children: [
          SearchRowInfo(
              viewModel: SearchRowInfoViewModel(
                  title: 'Арт галерея Москва',
                  subtitle: 'Музей современного искусства',
                  address: 'Садовая-Кудринская ул., 25, Москва',
                  distance: '7 км')),
          SearchRowInfo(
              viewModel: SearchRowInfoViewModel(
                  title:
                      'ГМИИ имени Пушкина, Галерея искусства стран Европы и Америки XIX – XX веков',
                  subtitle: 'Музей современного искусства',
                  address: 'Садовая-Кудринская ул., 25, Москва',
                  distance: '7 км')),
          SearchRowInfo(
              viewModel: SearchRowInfoViewModel(
                  title: 'галерея Новая Третьяковка',
                  subtitle: 'Государственная Третьяковская галерея',
                  address: 'Садовая-Кудринская ул., 25, Москва',
                  distance: '7 км')),
          SearchRowInfo(
              viewModel: SearchRowInfoViewModel(
                  title: 'Центр искусств Москва',
                  subtitle: 'Музей современного искусства',
                  address: 'Садовая-Кудринская ул., 25, Москва',
                  distance: '7 км')),
          SearchRowInfo(
              viewModel: SearchRowInfoViewModel(
                  title:
                      'Московская государственная картинная галерея народного художника СССР Александра Шилова',
                  subtitle: 'Музей современного искусства',
                  address: 'Садовая-Кудринская ул., 25, Москва',
                  distance: '7 км'))
        ])
    ]);
  }
}
