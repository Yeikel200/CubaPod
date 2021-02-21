import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constant.dart';
import '../logic/audio_podcast/audio_podcast_provider.dart';
import '../logic/panel_control/panel_control_provider.dart';
import '../logic/podcast_details/podcast_details_provider.dart';
import '../screens/pages/episodes_list_tab_bar_page.dart';

class AudioPodcastControl extends StatelessWidget {
  const AudioPodcastControl({Key key, @required this.overMenu})
      : super(key: key);

  final bool overMenu;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(builder: (context, watch, child) {
      final controlPanel = watch(panelControlNotifierProvider);
      final podcast = watch(audioPodcastStateNotifierProvider).podcastType;
      final top = controlPanel.getTopForPanelControl(
          controlPanel.controlPanelState, size.height, overMenu);
      return AnimatedBuilder(
          animation: controlPanel,
          builder: (context, child) {
            return AnimatedPositioned(
              curve: Curves.decelerate,
              duration: Duration(milliseconds: 300),
              top: top,
              height: size.height,
              left: 0.0,
              right: 0.0,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 150),
                child: controlPanel.controlPanelState ==
                            ControlPanelState.VISIBLE ||
                        controlPanel.controlPanelState ==
                            ControlPanelState.EXPANDED
                    ? Container(
                        child: GestureDetector(
                          onVerticalDragUpdate: (dragUpdateDetails) =>
                              controlPanel.onVerticalGesture(
                                  dragUpdateDetails.primaryDelta),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeaderSheetBottom(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 16.0),
                                  child: Text(
                                    '${podcast?.title}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 8.0),
                                  child: Text(
                                    '${podcast?.category?.name}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Divider(),
                                LayoutBuilder(
                                    builder: (context, boxConstraints) {
                                  final hieghtColumn = overMenu
                                      ? size.height -
                                          (kHeightBottomSheet * 5.46)
                                      : size.height -
                                          (kHeightBottomSheet * 3.3);
                                  return Column(
                                    children: [
                                      if (controlPanel.controlPanelState ==
                                          ControlPanelState.EXPANDED)
                                        Container(
                                          height: boxConstraints.maxHeight
                                              .clamp(25.0, hieghtColumn),
                                          width: size.width,
                                          child: EpisodeListWidget(
                                            episodesList:
                                                podcast?.episodes?.objects ??
                                                    [],
                                          ),
                                        ),
                                    ],
                                  );
                                })
                                // if (controlPanel.controlPanelState ==
                                //     ControlPanelState.EXPANDED)
                              ],
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ),
            );
          });
    });
  }
}

class HeaderSheetBottom extends StatelessWidget {
  const HeaderSheetBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final controlPanel = watch(panelControlNotifierProvider);
        final podcast =
            watch(podcastDetailsStateNotifierProvider).podcastTypeModel;

        final audioPodcastState =
            watch(audioPodcastStateNotifierProvider.state);
        final audioPodcast = watch(audioPodcastStateNotifierProvider);
        return Material(
          child: Container(
            height: kHeightBottomSheet,
            color: Colors.blue[50],
            child: Column(
              children: [
                Builder(builder: (context) {
                  if (audioPodcastState is PlayingState &&
                      audioPodcastState.episode.slug ==
                          audioPodcast?.episodeType?.slug) {
                    return StreamBuilder<double>(
                        stream: audioPodcast.percent(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return LinearProgressIndicator(
                              value: snapshot.data,
                            );
                          }
                          return LinearProgressIndicator();
                        });
                  }
                  return SizedBox.fromSize();
                }),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedSwitcher(
                        duration: Duration(microseconds: 500),
                        child: controlPanel.controlPanelState ==
                                ControlPanelState.VISIBLE
                            ? IconButton(
                                icon: Icon(Icons.keyboard_arrow_up),
                                iconSize: 30.0,
                                onPressed: () {
                                  context
                                      .read(panelControlNotifierProvider)
                                      .changeToExpanded();
                                },
                              )
                            : IconButton(
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconSize: 30.0,
                                onPressed: () {
                                  context
                                      .read(panelControlNotifierProvider)
                                      .changeToVisble();
                                },
                              ),
                      ),
                      Builder(
                        builder: (context) {
                          if (audioPodcastState is PlayingState &&
                              audioPodcastState.episode.slug ==
                                  audioPodcast?.episodeType?.slug) {
                            return IconButton(
                              icon: Icon(
                                Icons.stop_rounded,
                              ),
                              onPressed: () {
                                context
                                    .read(audioPodcastStateNotifierProvider)
                                    .stop();
                              },
                            );
                          }
                          return IconButton(
                            iconSize: 30.0,
                            icon: Icon(
                              Icons.play_arrow_rounded,
                            ),
                            onPressed: () {
                              context
                                  .read(audioPodcastStateNotifierProvider)
                                  .playUrl(
                                    episode: audioPodcast?.episodeType,
                                    podcast: podcast,
                                  );
                            },
                          );
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 8.0,
                          ),
                          child: Text(
                            audioPodcast?.episodeType?.title,
                            softWrap: true,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: 30.0,
                        icon: Icon(Icons.close),
                        onPressed: () {
                          context
                              .read(panelControlNotifierProvider)
                              .changeToHide();
                          context
                              .read(audioPodcastStateNotifierProvider)
                              .release();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
