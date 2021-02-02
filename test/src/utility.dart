import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/data/models/episode_type_model.dart';
import 'package:cubapod/src/data/models/episodes_model.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';

const tCategoriesJson = '''{
"categories": [
    {
      "name": "Arte",
      "slug": "arte",
      "description": "Pódcasts para complacer tu sensibilidad artística",
      "img": "categories/arts.png",
      "color": "#7400B8",
      "podcastsCount": 14
    },
    {
        "name": "Ciencia",
        "slug": "ciencia",
        "description": "Camina de la mano con quienes te explican el mundo",
        "img": "categories/sciences.png",
        "color": "#2C699A",
        "podcastsCount": 2
    },
    {
        "name": "Cine y televisión",
        "slug": "cine-y-television",
        "description": "Pódcasts, cámaras, ¡acción!",
        "img": "categories/tv-and-films.png",
        "color": "#F72585",
        "podcastsCount": 2
    }
  ]
}''';

const tCategoriesModelList = [
  CategoryTypeModel(
      name: "Arte",
      slug: "arte",
      description: "Pódcasts para complacer tu sensibilidad artística",
      img: "categories/arts.png",
      color: "#7400B8",
      podcastsCount: 14),
  CategoryTypeModel(
      name: "Ciencia",
      slug: "ciencia",
      description: "Camina de la mano con quienes te explican el mundo",
      img: "categories/sciences.png",
      color: "#2C699A",
      podcastsCount: 2),
  CategoryTypeModel(
      name: "Cine y televisión",
      slug: "cine-y-television",
      description: "Pódcasts, cámaras, ¡acción!",
      img: "categories/tv-and-films.png",
      color: "#F72585",
      podcastsCount: 2),
];

const tPodcastsModelList = [
  PodcastTypeModel(
      title: "El Petate de Petabyte Blog",
      subtitle:
          "Un podcast para conocer sobre tecnologías, que forma parte del proyecto infocomunicativo PetabyteBlog.\nMiramos y hablamos de tecnologías de la información y la comunicación desde Cuba.",
      image:
          "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
      author: "Petate de PetabyteBlog",
      summary:
          "Un podcast para conocer sobre tecnologías, que forma parte del proyecto infocomunicativo PetabyteBlog.\nMiramos y hablamos de tecnologías de la información y la comunicación desde Cuba.",
      episodesCount: 2,
      category: CategoryTypeModel(
        name: "Tecnología",
        slug: "tecnologia",
        description: "La actualidad de la innovación tecnológica",
        img: "categories/technology.png",
        color: "#33A8C7",
        podcastsCount: 16,
      ),
      episodes: EpisodesModel(page: 1, pages: 1, objects: [
        EpisodeTypeModel(
          slug: "el-petate-02-mas-que-una-videollamada",
          guid: "6fe18a43-7e55-4318-abb8-44e35def404a",
          title: "[El Petate 02] Más que una videollamada",
          summary:
              "<p>Con seguridad, has hecho alguna videollamada en estos tiempos de pandemia. Esta semana te acercamos a Zoom, una aplicación que ofrece ese y otros servicios, y que se ha vuelto muy popular en todo el mundo por su utilidad.</p>\n<p>También podrás conocer sobre su uso en Cuba y algunas alternativas para salas de chat en video.</p>\n<p><strong>© </strong><a href=\"//t.me/PetabyteBlog\"><strong>Petabyte Blog</strong></a><strong>, </strong><a href=\"//t.me/NexosRadioUH\"><strong>Nexos Radio</strong></a><strong> </strong>&amp;<strong> </strong><a href=\"//www,fcom.uh.cu\"><strong>Facultad de Comunicación</strong></a> de la Universidad de La Habana.</p>",
          enclosure:
              "https://anchor.fm/s/3825c1a4/podcast/play/21225810/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-17%2F6ce317b7-7765-0fcc-2ab3-7a7341eaa4f0.mp3",
          link:
              "https://anchor.fm/petate-de-petabyteblog/episodes/El-Petate-02-Ms-que-una-videollamada-el68si",
          image:
              "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
          itunesDuration: "680",
          publishedAt: "2020-10-17T04:00:00+00:00",
        ),
        EpisodeTypeModel(
          slug: "el-petate-01-si-google-no-existiera",
          guid: "4d7e1c80-a338-4ea7-ba61-33ed90e7d873",
          title: "[El Petate 01] Si Google no existiera",
          summary:
              '<p>\"Googlear\" ya es considerado un sinónimo de buscar información, pero esa apropiación simboliza la centralidad de esta web y el desconocimiento de otras alternativas.</p>\n<p>Entérate de qué sucedería si Google no existiera, en este episodio de nuestro podcast, donde proponemos buscadores alternativos a la gran G, porque queremos que manejes Internet más allá de lo evidente.</p>\n<p><em>© </em><a href=\"https://t.me/petabyteblog\"><em>Petabyte Blog</em></a><em>, </em><a href=\"https://t.me/nexosradioUH\"><em>Nexos Radio</em></a><em> &amp; </em><a href=\"//www.fcom.uh.cu\"><em>Facultad de Comunicación</em></a><em> de la Universidad de La Habana.</em></p>',
          enclosure:
              "https://anchor.fm/s/3825c1a4/podcast/play/20228581/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-27%2F3b83dd80-4ea6-73b6-04b0-07afe617e32d.mp3",
          link:
              "https://anchor.fm/petate-de-petabyteblog/episodes/El-Petate-01-Si-Google-no-existiera-ek7r15",
          image:
              "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
          itunesDuration: "518",
          publishedAt: "2020-09-27T07:50:47+00:00",
        ),
      ])),
  PodcastTypeModel(
    title: "iClub Cuba",
    subtitle: "Promoviendo el uso de dispositivos iOS en Cuba",
    image:
        "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3218569/3218569-1592168451618-0d459b101cc69.jpg",
    author: "iClub Cuba",
    summary: "Promoviendo el uso de dispositivos iOS en Cuba",
    category: CategoryTypeModel(
        name: "Tecnología",
        slug: "tecnologia",
        description: "La actualidad de la innovación tecnológica",
        img: "categories/technology.png",
        color: "#33A8C7",
        podcastsCount: 16),
    episodesCount: 1,
    episodes: EpisodesModel(page: 1, pages: 1, objects: [
      EpisodeTypeModel(
        slug: "iphone-en-cuba-uso-y-adquisicion",
        guid: "b93687c1-bbb9-4c07-8efb-c01f83c8e0b9",
        title: "iPhone en Cuba; uso y adquisición.",
        summary:
            "Sean todos bienvenidos al podcast de iClub; una familia que busca promover el uso y adquisición de dispositivos  en Cuba.\nEste es nuestro primer podcast y hablaremos de las ventajas y desventajas de la adquisición de uno de estos dispositivos en la isla, si es recomendable o no y punto a punto los compararemos con su competencia directa.\nSomos Carlos Candelario, José Ernesto Sosa y quien les habla Lesly Cintra.\n\n1. Qué ventajas y desventajas tiene la adquisición de un iPhone en Cuba?\n  - Precios.\n    - Compatibilidad.\n    - Prestaciones.\n    - Soporte.\n    - Experiencia de usuario.\n    - Aplicaciones gubernamentales (transfermovil, enzona, todus, etc.).\n2. Le recomendarías a alguien la compra de un iPhone?\n3. Te afecta en gran medida las limitaciones que tienen en Cuba los dispositivos iPhone?\n4. Extrañas Android? \n5. Si por alguna casualidad del destino te quedaras sin teléfono, te comprarías un dispositivo Android antes que un iPhone?\n6. Que sistema operativo prefieres y por qué?\n7. Crees que poder disfrutar de Music u otro servicio de Apple en Cuba es trivial?\n\nPuede seguirnos en telegram como iClub Cuba(https://t.me/iClub_Cuba) y Mobile World(https://t.me/mobileworldcub).",
        enclosure:
            "https://anchor.fm/s/13c7bc04/podcast/play/16004079/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-6-2%2F86981517-44100-2-1b36e66f6391d.m4a",
        link:
            "https://anchor.fm/iclub-cuba/episodes/iPhone-en-Cuba-uso-y-adquisicin-eg6thf",
        image:
            "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3218569/3218569-1592168451618-0d459b101cc69.jpg",
        itunesDuration: "2792",
        publishedAt: "2020-07-02T04:33:05+00:00",
      )
    ]),
  ),
  PodcastTypeModel(
      title: "Pantalla de Carga",
      subtitle: "Pantalla de Carga",
      image: "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
      author: "kopek@bachecubano.com (TuPodcast)",
      summary:
          "Pantalla de Carga, es un Podcast sobre juegos, series y cultura nerd en general.",
      episodesCount: 2,
      category: CategoryTypeModel(
          name: "Tecnología",
          slug: "tecnologia",
          description: "La actualidad de la innovación tecnológica",
          img: "categories/technology.png",
          color: "#33A8C7",
          podcastsCount: 16),
      episodes: EpisodesModel(page: 1, pages: 1, objects: [
        EpisodeTypeModel(
          slug: "star-wars",
          guid: "https://tupodcast.com/?p=682",
          title: "Star Wars!!",
          summary:
              "Bienvenidos al Episodio #2 de Pantalla de Carga, un Podcast sobre juegos, series y cultura nerd en general. Eduardo y […]",
          enclosure: "https://archive.org/download/pcep2/PCEP2.mp3",
          link: "https://tupodcast.com/star-wars/",
          image: "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
          itunesDuration: "39:55",
          publishedAt: "2019-11-30T08:00:02+00:00",
        ),
        EpisodeTypeModel(
          slug: "cargando-la-rom",
          guid: "https://tupodcast.com/?p=674",
          title: "Cargando la ROM",
          summary:
              "Bienvenidos al Episodio #1 de Pantalla de Carga, un Podcast sobre juegos, series y cultura nerd en general. En este […]",
          enclosure: "https://archive.org/download/pcep1_201911/PCEP1.mp3",
          link: "https://tupodcast.com/cargando-la-rom/",
          image: "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
          itunesDuration: "32:49",
          publishedAt: "2019-11-26T06:04:35+00:00",
        )
      ]))
];
const tPodcastsJson = r'''{
  "podcasts": [
      {
          "title": "El Petate de Petabyte Blog",
          "url": "https://anchor.fm/s/3825c1a4/podcast/rss",
          "subtitle": "Un podcast para conocer sobre tecnologías, que forma parte del proyecto infocomunicativo PetabyteBlog.\nMiramos y hablamos de tecnologías de la información y la comunicación desde Cuba.",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
          "link": "https://t.me/petabyteblog",
          "author": "Petate de PetabyteBlog",
          "summary": "Un podcast para conocer sobre tecnologías, que forma parte del proyecto infocomunicativo PetabyteBlog.\nMiramos y hablamos de tecnologías de la información y la comunicación desde Cuba.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 2,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "el-petate-02-mas-que-una-videollamada",
                      "guid": "6fe18a43-7e55-4318-abb8-44e35def404a",
                      "title": "[El Petate 02] Más que una videollamada",
                      "summary": "<p>Con seguridad, has hecho alguna videollamada en estos tiempos de pandemia. Esta semana te acercamos a Zoom, una aplicación que ofrece ese y otros servicios, y que se ha vuelto muy popular en todo el mundo por su utilidad.</p>\n<p>También podrás conocer sobre su uso en Cuba y algunas alternativas para salas de chat en video.</p>\n<p><strong>© </strong><a href=\"//t.me/PetabyteBlog\"><strong>Petabyte Blog</strong></a><strong>, </strong><a href=\"//t.me/NexosRadioUH\"><strong>Nexos Radio</strong></a><strong> </strong>&amp;<strong> </strong><a href=\"//www,fcom.uh.cu\"><strong>Facultad de Comunicación</strong></a> de la Universidad de La Habana.</p>",
                      "enclosure": "https://anchor.fm/s/3825c1a4/podcast/play/21225810/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-17%2F6ce317b7-7765-0fcc-2ab3-7a7341eaa4f0.mp3",
                      "link": "https://anchor.fm/petate-de-petabyteblog/episodes/El-Petate-02-Ms-que-una-videollamada-el68si",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
                      "itunesDuration": "680",
                      "publishedAt": "2020-10-17T04:00:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2312"
                  },
                  {
                      "slug": "el-petate-01-si-google-no-existiera",
                      "guid": "4d7e1c80-a338-4ea7-ba61-33ed90e7d873",
                      "title": "[El Petate 01] Si Google no existiera",
                      "summary": "<p>\"Googlear\" ya es considerado un sinónimo de buscar información, pero esa apropiación simboliza la centralidad de esta web y el desconocimiento de otras alternativas.</p>\n<p>Entérate de qué sucedería si Google no existiera, en este episodio de nuestro podcast, donde proponemos buscadores alternativos a la gran G, porque queremos que manejes Internet más allá de lo evidente.</p>\n<p><em>© </em><a href=\"https://t.me/petabyteblog\"><em>Petabyte Blog</em></a><em>, </em><a href=\"https://t.me/nexosradioUH\"><em>Nexos Radio</em></a><em> &amp; </em><a href=\"//www.fcom.uh.cu\"><em>Facultad de Comunicación</em></a><em> de la Universidad de La Habana.</em></p>",
                      "enclosure": "https://anchor.fm/s/3825c1a4/podcast/play/20228581/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-27%2F3b83dd80-4ea6-73b6-04b0-07afe617e32d.mp3",
                      "link": "https://anchor.fm/petate-de-petabyteblog/episodes/El-Petate-01-Si-Google-no-existiera-ek7r15",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/9319985/9319985-1600850870641-a8e8a80a4bf9e.jpg",
                      "itunesDuration": "518",
                      "publishedAt": "2020-09-27T07:50:47+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2125"
                  }
              ]
          }
      },
      {
          "title": "iClub Cuba",
          "url": "https://anchor.fm/s/13c7bc04/podcast/rss",
          "subtitle": "Promoviendo el uso de dispositivos iOS en Cuba",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3218569/3218569-1592168451618-0d459b101cc69.jpg",
          "link": "https://anchor.fm/iclub-cuba",
          "author": "iClub Cuba",
          "summary": "Promoviendo el uso de dispositivos iOS en Cuba",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 1,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "iphone-en-cuba-uso-y-adquisicion",
                      "guid": "b93687c1-bbb9-4c07-8efb-c01f83c8e0b9",
                      "title": "iPhone en Cuba; uso y adquisición.",
                      "summary": "Sean todos bienvenidos al podcast de iClub; una familia que busca promover el uso y adquisición de dispositivos  en Cuba.\nEste es nuestro primer podcast y hablaremos de las ventajas y desventajas de la adquisición de uno de estos dispositivos en la isla, si es recomendable o no y punto a punto los compararemos con su competencia directa.\nSomos Carlos Candelario, José Ernesto Sosa y quien les habla Lesly Cintra.\n\n1. Qué ventajas y desventajas tiene la adquisición de un iPhone en Cuba?\n  - Precios.\n    - Compatibilidad.\n    - Prestaciones.\n    - Soporte.\n    - Experiencia de usuario.\n    - Aplicaciones gubernamentales (transfermovil, enzona, todus, etc.).\n2. Le recomendarías a alguien la compra de un iPhone?\n3. Te afecta en gran medida las limitaciones que tienen en Cuba los dispositivos iPhone?\n4. Extrañas Android? \n5. Si por alguna casualidad del destino te quedaras sin teléfono, te comprarías un dispositivo Android antes que un iPhone?\n6. Que sistema operativo prefieres y por qué?\n7. Crees que poder disfrutar de Music u otro servicio de Apple en Cuba es trivial?\n\nPuede seguirnos en telegram como iClub Cuba(https://t.me/iClub_Cuba) y Mobile World(https://t.me/mobileworldcub).",
                      "enclosure": "https://anchor.fm/s/13c7bc04/podcast/play/16004079/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-6-2%2F86981517-44100-2-1b36e66f6391d.m4a",
                      "link": "https://anchor.fm/iclub-cuba/episodes/iPhone-en-Cuba-uso-y-adquisicin-eg6thf",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3218569/3218569-1592168451618-0d459b101cc69.jpg",
                      "itunesDuration": "2792",
                      "publishedAt": "2020-07-02T04:33:05+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1095"
                  }
              ]
          }
      },
      {
          "title": "Pantalla de Carga",
          "url": "https://tupodcast.com/feed/pantalladecarga",
          "subtitle": "Pantalla de Carga",
          "image": "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "kopek@bachecubano.com (TuPodcast)",
          "summary": "Pantalla de Carga, es un Podcast sobre juegos, series y cultura nerd en general.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 2,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "star-wars",
                      "guid": "https://tupodcast.com/?p=682",
                      "title": "Star Wars!!",
                      "summary": "Bienvenidos al Episodio #2 de Pantalla de Carga, un Podcast sobre juegos, series y cultura nerd en general. Eduardo y […]",
                      "enclosure": "https://archive.org/download/pcep2/PCEP2.mp3",
                      "link": "https://tupodcast.com/star-wars/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
                      "itunesDuration": "39:55",
                      "publishedAt": "2019-11-30T08:00:02+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_336"
                  },
                  {
                      "slug": "cargando-la-rom",
                      "guid": "https://tupodcast.com/?p=674",
                      "title": "Cargando la ROM",
                      "summary": "Bienvenidos al Episodio #1 de Pantalla de Carga, un Podcast sobre juegos, series y cultura nerd en general. En este […]",
                      "enclosure": "https://archive.org/download/pcep1_201911/PCEP1.mp3",
                      "link": "https://tupodcast.com/cargando-la-rom/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/pc_itunes_new.jpg",
                      "itunesDuration": "32:49",
                      "publishedAt": "2019-11-26T06:04:35+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_337"
                  }
              ]
          }
      }
  ]
}''';
