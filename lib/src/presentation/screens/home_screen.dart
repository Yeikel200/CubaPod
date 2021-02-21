import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/audio_podcast/audio_podcast_provider.dart';
import '../logic/panel_control/panel_control_provider.dart';
import '../widgets/audio_podcast_control.dart';
import 'podcast_list_page.dart';
import 'search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    PodcastListPage(),
    SearchPage(),
    Center(
      child: Text(
        'Index 2: Favorit',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: Setting',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('CubaPod'),
        actions: [
          IconButton(
            icon: Icon(Icons.airplanemode_active),
            onPressed: () {
              context.read(panelControlNotifierProvider).changeToVisble();
            },
          ),
          IconButton(
            icon: Icon(Icons.airplanemode_inactive),
            onPressed: () {
              context.read(panelControlNotifierProvider).changeToHide();
            },
          )
        ],
      ),
      body: ProviderListener<AudioPodcastState>(
        provider: audioPodcastStateNotifierProvider.state,
        onChange: (context, state) {
          if (state is LoadingState) {
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      content: Container(
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text("Cargando..."),
                              ),
                            ],
                          )),
                    ));
          }
          if (state is PlayingState) {
            Navigator.of(context).pop();
          }
          if (state is ErrorState) {
            // Navigator.of(context).pop();
            print('ERROR>>> AUDIO_PODCAST');
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('No se puede repdoducir el episodio :('),
              ),
            );
          }
        },
        child: Consumer(builder: (context, watch, child) {
          final controlPanel = watch(panelControlNotifierProvider);
          return Stack(children: [
            AnimatedPositioned(
              duration: Duration(microseconds: 250),
              curve: Curves.elasticOut,
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: controlPanel.getBottomForListPage(
                controlPanel.controlPanelState,
                size.height,
              ),
              child: Container(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
            AudioPodcastControl(
              overMenu: true,
            ),
          ]);
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _onItemTapped(index),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(label: 'Inicio', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Buscar', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'Favorito', icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: 'Ajustes', icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
