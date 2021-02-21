import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/application/select_topic_notifier.dart';
import 'package:cubapod/src/presentation/screens/home_screen.dart';
import 'package:cubapod/src/presentation/widgets/topic_category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectTopicsScreen extends StatelessWidget {
  const SelectTopicsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   color: Colors.black,
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () => Navigator.pop(context),
        // ),
        title: Text(
          'Seleccione temas',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          // Text(
          //   'Seleccionar temas',
          //   style: TextStyle(
          //     fontSize: 30.0,
          //     color: Colors.blue.shade900,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Consumer(builder: (context, watch, child) {
              final search = watch(searchCategoryList);
              return TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Buscar tema',
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (val) => search.state = val,
              );
            }),
          ),
          Expanded(
            child: ProviderListener(
              provider: categoryListStateNotifierProvider,
              onChange: (context, state) {
                if (state is ErrorTopicsState) {
                  return Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(state.message),
                  ));
                }
              },
              child: Consumer(builder: (context, watch, child) {
                final search = watch(searchCategoryList).state;
                final result = watch(categoryListStateNotifierProvider.state);
                if (result is LoadingTopicsState) {
                  return Center(child: CircularProgressIndicator());
                }

                if (result is LoadedTopicsState) {
                  final filtredList = result.topicsList
                      .where((elem) => elem.categoryTypeModel.name
                          .toLowerCase()
                          .contains(search.toLowerCase()))
                      .toList();
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: filtredList.length,
                    itemBuilder: (context, index) {
                      return TopicCategoryCardWidget(
                        topicModel: filtredList[index],
                      );
                    },
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Icon(
                          Icons.error_rounded,
                          size: size.width * 0.25,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Upsss... !!',
                          style: TextStyle(fontSize: size.width * 0.05),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Algo salió mal, asegurece de estar conectado !!',
                          style: TextStyle(fontSize: size.width * 0.03),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: RaisedButton(
                          child: Text('Reintentar'),
                          onPressed: () => context
                              .read(categoryListStateNotifierProvider)
                              .getCategoryList(),
                        ),
                      ),
                    ],
                  );
                }
              }),
            ),
          ),
          GestureDetector(
            onTap: () {
              final catSelectList =
                  context.read(categoryListStateNotifierProvider);
              catSelectList.saveListLocally();
              catSelectList.categoryList.forEach((elem) {
                if (!elem.isSelected) {
                  context
                      .read(podcastsListStateNotifierProvider)
                      .deletePodcasts(
                          categorySlug: elem.categoryTypeModel.slug);
                }
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Container(
              height: 60.0,
              color: Colors.blue.shade900,
              child: Center(
                child: Text(
                  'Guardar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
