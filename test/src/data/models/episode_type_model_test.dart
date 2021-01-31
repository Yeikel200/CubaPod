import 'dart:convert';

import 'package:cubapod/src/data/models/episode_type_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mapEpisodesList =
      jsonDecode(tEpisodesJson)['episodes']['objects'] as List;
  test('should return a valid model the fromJson method', () {
    final result =
        mapEpisodesList.map((e) => EpisodeTypeModel.fromJson(e)).toList();

    expect(result, tEpisodeTypeModelList);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tEpisodeTypeModelList.map((c) => c.toJson());

    expect(result, mapEpisodesList);
  });
}

const tEpisodeTypeModelList = [
  EpisodeTypeModel(
    guid: "https://tupodcast.com/?p=2138",
    title: "Apple Event, Plasma 5.20, AMD y otras hierbas",
    summary:
        "Bienvenidos al Episodio #11 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
    enclosure:
        "https://archive.org/download/apple_event_plasma_amd/apple_event_plasma_amd.mp3",
    link: "https://tupodcast.com/apple-event-plasma-5-20-amd-y-otras-hierbas/",
    image: "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
    itunesDuration: "48:07",
    publishedAt: "2020-10-14T14:02:05+00:00",
    slug: "https://t.me/CubaPodBot?start=episode_2292",
  ),
  EpisodeTypeModel(
    guid: "https://tupodcast.com/?p=1343",
    title: "QT LTS de pago, Plasma 5.18, Windows 7, Avast y otros temas",
    summary:
        "Bienvenidos al Episodio #10 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
    enclosure: "https://archive.org/download/avast_windows7/avast_windows7.mp3",
    link:
        "https://tupodcast.com/qt-lts-de-pago-plasma-5-18-windows-7-avast-y-otros-temas/",
    image: "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
    itunesDuration: "1:15:14",
    publishedAt: "2020-02-02T04:07:17+00:00",
    slug: "https://t.me/CubaPodBot?start=episode_9",
  ),
  EpisodeTypeModel(
      guid: "https://tupodcast.com/?p=872",
      title:
          "Algunas sucesos relevantes en el mundo del FLOSS en 2019. Nitrux, AppImage, Stallman y más.",
      summary:
          "Bienvenidos al Episodio #9 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
      enclosure:
          "https://archive.org/download/floss2019_nitrux/floss2019_nitrux.mp3",
      link:
          "https://tupodcast.com/sucesos-relevantes-floss-2019-nitrux-appimage-stallman/",
      image: "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
      itunesDuration: "1:40:33",
      publishedAt: "2020-01-01T16:18:53+00:00",
      slug: "https://t.me/CubaPodBot?start=episode_10"),
];

const tEpisodesJson =
    '''
{
  "episodes": {
  "page": 1,
  "pages": 2,
  "objects": [
      {
          "guid": "https://tupodcast.com/?p=2138",
          "title": "Apple Event, Plasma 5.20, AMD y otras hierbas",
          "summary": "Bienvenidos al Episodio #11 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
          "enclosure": "https://archive.org/download/apple_event_plasma_amd/apple_event_plasma_amd.mp3",
          "link": "https://tupodcast.com/apple-event-plasma-5-20-amd-y-otras-hierbas/",
          "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
          "itunesDuration": "48:07",
          "publishedAt": "2020-10-14T14:02:05+00:00",
          "slug": "https://t.me/CubaPodBot?start=episode_2292"
      },
      {
          "guid": "https://tupodcast.com/?p=1343",
          "title": "QT LTS de pago, Plasma 5.18, Windows 7, Avast y otros temas",
          "summary": "Bienvenidos al Episodio #10 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
          "enclosure": "https://archive.org/download/avast_windows7/avast_windows7.mp3",
          "link": "https://tupodcast.com/qt-lts-de-pago-plasma-5-18-windows-7-avast-y-otros-temas/",
          "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
          "itunesDuration": "1:15:14",
          "publishedAt": "2020-02-02T04:07:17+00:00",
          "slug": "https://t.me/CubaPodBot?start=episode_9"
      },
      {
          "guid": "https://tupodcast.com/?p=872",
          "title": "Algunas sucesos relevantes en el mundo del FLOSS en 2019. Nitrux, AppImage, Stallman y más.",
          "summary": "Bienvenidos al Episodio #9 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
          "enclosure": "https://archive.org/download/floss2019_nitrux/floss2019_nitrux.mp3",
          "link": "https://tupodcast.com/sucesos-relevantes-floss-2019-nitrux-appimage-stallman/",
          "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
          "itunesDuration": "1:40:33",
          "publishedAt": "2020-01-01T16:18:53+00:00",
          "slug": "https://t.me/CubaPodBot?start=episode_10"
      }
    ]
  }
}
''';
