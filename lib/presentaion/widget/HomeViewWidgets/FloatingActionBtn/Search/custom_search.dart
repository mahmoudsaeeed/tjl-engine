import '../../../../../models/engine_model.dart';
import '../../../EngineListViewWidgets/EngineShapeWidgets/engine_shape.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  final List<EngineModel> currList;
  final int pageNumber;
  CustomSearch({required this.pageNumber, required this.currList});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != "") {
      EngineModel filteredEngine =
          currList.singleWhere((engine) => engine.id == int.parse(query));
      return EngineShape(
          currEngine: filteredEngine, index: 0, pageNumber: pageNumber);
    } else {
      return ListView.builder(
          itemCount: currList.length,
          itemBuilder: (context, index) {
            return EngineShape(
              currEngine: currList[index],
              index: index,
              pageNumber: pageNumber,
            );
          });
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<EngineModel> filteredList = currList.where((engine) {
      return engine.id.toString().contains(query);
    }).toList();

    return query == ""
        ?
        // EngineListView(currList: currList, pageNumber: pageNumber)

        ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  query = filteredList[index].id.toString();
                },
                child: EngineShape(
                  currEngine: filteredList[index],
                  index: index,
                  pageNumber: pageNumber,
                ),
              );
            })
        : ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  query = filteredList[index].id.toString();
                },
                child: EngineShape(
                  currEngine: filteredList[index],
                  index: index,
                  pageNumber: pageNumber,
                ),
              );
            });
    // EngineListView(currList: filteredList, pageNumber: pageNumber);
  }
}
