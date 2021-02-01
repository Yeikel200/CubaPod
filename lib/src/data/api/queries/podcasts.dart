const qPodcasts = r'''
query podcasts($categorySlug: String!, $page: Int!,) {
  podcasts(categorySlug: $categorySlug) {
    title
        url
        title
        subtitle
        image
        link
        author
        summary
        episodes (page: $page) {
            page
            pages
            objects {
                slug
                guid
                title
                summary
                enclosure
                link
                image
                itunesDuration
                publishedAt
                botDirectLink
            }
        }
  }
}''';

//   *** Variable ***
// {
//   "categorySlug": "tecnologia"
// }

const responsePodcasts = r'''
{
  "podcasts": [
      {
          "title": "AFTP",
          "url": "https://tupodcast.com/feed/aftp",
          "subtitle": "AFTP",
          "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "elavdeveloper@gmail.com (TuPodcast)",
          "summary": "Es un Show protagonizado por Ernesto Acosta (@elavdeveloper) junto a David Linares (@mcder3) y otros miembros de la Comunidad de SystemInside o usuarios de Linux, Windows, macOS en general, donde se habla de tecnología (la mayor parte).",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 11,
          "episodes": {
              "page": 1,
              "pages": 2,
              "objects": [
                  {
                      "slug": "apple-event-plasma-520-amd-y-otras-hierbas",
                      "guid": "https://tupodcast.com/?p=2138",
                      "title": "Apple Event, Plasma 5.20, AMD y otras hierbas",
                      "summary": "Bienvenidos al Episodio #11 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/apple_event_plasma_amd/apple_event_plasma_amd.mp3",
                      "link": "https://tupodcast.com/apple-event-plasma-5-20-amd-y-otras-hierbas/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "48:07",
                      "publishedAt": "2020-10-14T14:02:05+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2292"
                  },
                  {
                      "slug": "qt-lts-de-pago-plasma-5-18-windows-7-avast-y-otros-temas",
                      "guid": "https://tupodcast.com/?p=1343",
                      "title": "QT LTS de pago, Plasma 5.18, Windows 7, Avast y otros temas",
                      "summary": "Bienvenidos al Episodio #10 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/avast_windows7/avast_windows7.mp3",
                      "link": "https://tupodcast.com/qt-lts-de-pago-plasma-5-18-windows-7-avast-y-otros-temas/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:15:14",
                      "publishedAt": "2020-02-02T04:07:17+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_9"
                  },
                  {
                      "slug": "algunas-sucesos-relevantes-en-el-mundo-del-floss-en-2019-nitrux-appimage-stallman-y-mas",
                      "guid": "https://tupodcast.com/?p=872",
                      "title": "Algunas sucesos relevantes en el mundo del FLOSS en 2019. Nitrux, AppImage, Stallman y más.",
                      "summary": "Bienvenidos al Episodio #9 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/floss2019_nitrux/floss2019_nitrux.mp3",
                      "link": "https://tupodcast.com/sucesos-relevantes-floss-2019-nitrux-appimage-stallman/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:40:33",
                      "publishedAt": "2020-01-01T16:18:53+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_10"
                  },
                  {
                      "slug": "algunos-de-los-productos-mas-interesantes-del-2019",
                      "guid": "https://tupodcast.com/?p=866",
                      "title": "Algunos de los productos más interesantes del 2019",
                      "summary": "Bienvenidos al Episodio #8 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares. Nos […]",
                      "enclosure": "https://archive.org/download/productos2019/productos2019.mp3",
                      "link": "https://tupodcast.com/algunos-de-los-productos-mas-interesantes-del-2019/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:49:48",
                      "publishedAt": "2019-12-27T15:49:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_11"
                  },
                  {
                      "slug": "repasamos-el-evento-de-google",
                      "guid": "https://tupodcast.com/?p=629",
                      "title": "Repasamos el Evento de Google",
                      "summary": "Bienvenidos al Episodio #7 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares. En […]",
                      "enclosure": "https://archive.org/download/evento_google/evento_google.mp3",
                      "link": "https://tupodcast.com/repasamos-el-evento-de-google/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:06:08",
                      "publishedAt": "2019-10-18T04:07:10+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_12"
                  },
                  {
                      "slug": "repasamos-el-evento-surface-de-microsoft",
                      "guid": "https://tupodcast.com/?p=608",
                      "title": "Repasamos el evento Surface de Microsoft",
                      "summary": "Bienvenidos al Episodio #6 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares. En […]",
                      "enclosure": "https://archive.org/download/surface_event/surface_event.mp3",
                      "link": "https://tupodcast.com/repasamos-el-evento-surface-de-microsoft/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:06:54",
                      "publishedAt": "2019-10-05T15:19:21+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_13"
                  },
                  {
                      "slug": "como-pueden-ganar-dinero-los-desarrolladores",
                      "guid": "https://tupodcast.com/?p=521",
                      "title": "¿Cómo pueden ganar dinero los desarrolladores?",
                      "summary": "Bienvenidos al Episodio #5 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/dinero_desarrolladores/dinero_desarrolladores.mp3",
                      "link": "https://tupodcast.com/como-pueden-ganar-dinero-los-desarrolladores/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:02:00",
                      "publishedAt": "2019-08-20T04:09:27+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_14"
                  },
                  {
                      "slug": "hackintosh-o-macos",
                      "guid": "https://tupodcast.com/?p=490",
                      "title": "¿Hackintosh o macOS?",
                      "summary": "Bienvenidos al Episodio #4 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/macos_hackintosh/macos_hackintosh.mp3",
                      "link": "https://tupodcast.com/hackintosh-o-macos/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:00:13",
                      "publishedAt": "2019-07-09T05:21:31+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_15"
                  },
                  {
                      "slug": "salseo-gtk-salseo-con-huawei-y-despedida-de-antergos",
                      "guid": "https://tupodcast.com/?p=451",
                      "title": "Salseo GTK, Salseo con Huawei y despedida de Antergos",
                      "summary": "Bienvenidos al Episodio #3 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/gtk_huawei_antergos/gtk_huawei_antergos.mp3",
                      "link": "https://tupodcast.com/salseo-gtk-salseo-huawei-despedida-antergos/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:05:45",
                      "publishedAt": "2019-05-28T18:45:45+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_16"
                  },
                  {
                      "slug": "sobre-el-notch-los-agujeros-apple-y-el-librem-5",
                      "guid": "https://tupodcast.com/?p=368",
                      "title": "Sobre el notch, los agujeros, Apple y el Librem 5",
                      "summary": "Bienvenidos al Episodio #2 de AFTP (Another Functional Tech Podcast) presentado por Ernesto Acosta y acompañado por David Linares y […]",
                      "enclosure": "https://archive.org/download/aftp_2/aftp_2.mp3",
                      "link": "https://tupodcast.com/sobre-notch-agujeros-apple-y-librem5/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/aftp_itunes_new.jpg",
                      "itunesDuration": "1:18:32",
                      "publishedAt": "2019-03-02T04:15:13+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_17"
                  }
              ]
          }
      },
      {
          "title": "El Bache",
          "url": "https://tupodcast.com/feed/elbache",
          "subtitle": "El Bache",
          "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "kopek@bachecubano.com (TuPodcast)",
          "summary": "Un Podcast tecnológico muy troll de parte de Edo Pujol y Erich García",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 22,
          "episodes": {
              "page": 1,
              "pages": 3,
              "objects": [
                  {
                      "slug": "el-bache-203-buenas-nuevas",
                      "guid": "https://tupodcast.com/?p=2381",
                      "title": "El Bache 2×03 – Buenas nuevas",
                      "summary": "Muy buenas mi gente, un saludo desde Cuba, un poquito atrasados pero seguro les traemos el podcast correspondiente a la […]",
                      "enclosure": "https://archive.org/download/elBache2x3/elBache2x3.mp3",
                      "link": "https://tupodcast.com/el-bache-2x03-buenas-nuevas/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "56:08",
                      "publishedAt": "2021-01-25T22:34:02+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_14834"
                  },
                  {
                      "slug": "el-bache-202-le-metieron-el-aquello-a-xiaomi",
                      "guid": "https://tupodcast.com/?p=2363",
                      "title": "El Bache 2×02 – ¿Le metieron el aquello a Xiaomi?",
                      "summary": "Muy buenas mi gente, un saludo desde Cuba… Hoy en El Bache Podcast comentaremos sobre las últimas noticias del mundo […]",
                      "enclosure": "https://archive.org/download/elBache2x02/elBache2x02.mp3",
                      "link": "https://tupodcast.com/el-bache-2x02-le-metieron-el-aquello-a-xiaomi/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "40:26",
                      "publishedAt": "2021-01-15T23:55:13+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3197"
                  },
                  {
                      "slug": "el-bache-201-dura-migdalia",
                      "guid": "https://tupodcast.com/?p=2353",
                      "title": "El Bache 2×01- Dura Migdalia",
                      "summary": "En una realidad alternativa… bueno, en la única realidad que hay, un hombre y una mujer se dan a la […]",
                      "enclosure": "https://archive.org/download/elBache2x01/elBache2x01.mp3",
                      "link": "https://tupodcast.com/el-bache-2x01-dura-migdalia/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "39:58",
                      "publishedAt": "2021-01-08T23:43:21+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3063"
                  },
                  {
                      "slug": "el-bache-19-el-rico-pie-de-coco-y-de-guayaba-de-coco-y-de-guayaba-el-original-de-coco-y-de-guayaba",
                      "guid": "https://tupodcast.com/?p=2130",
                      "title": "El Bache 19 El rico pie de coco y de guayaba, de coco y de guayaba, el original, de coco y de guayaba",
                      "summary": "El rico pie de coco y de guayaba, de coco y de guayaba, el original, de coco y de guayaba […]",
                      "enclosure": "https://ia601409.us.archive.org/6/items/ep19_20201004/ep19.mp3",
                      "link": "https://tupodcast.com/el-bache-19-el-rico-pie-de-coco-y-de-guayaba-de-coco-y-de-guayaba-el-original-de-coco-y-de-guayaba/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "40:30",
                      "publishedAt": "2020-10-07T03:03:29+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2214"
                  },
                  {
                      "slug": "el-bache-18-ya-somos-mayores-de-edad",
                      "guid": "https://tupodcast.com/?p=2122",
                      "title": "El bache 18 Ya somos mayores de edad",
                      "summary": "En este decimo octavo episodio del bache, José y Ernesto, divagan sobre por que hicieron el podcast el dia que […]",
                      "enclosure": "https://ia801409.us.archive.org/34/items/ep-18_202010/EP18.mp3",
                      "link": "https://tupodcast.com/el-bache-18-ya-somos-mayores-de-edad/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "39:37",
                      "publishedAt": "2020-10-04T03:31:39+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2188"
                  },
                  {
                      "slug": "elbache-17-nos-metieron-el-aquello-es-en-serio",
                      "guid": "https://tupodcast.com/?p=2082",
                      "title": "ElBache 17: Nos metieron el aquello….. es en serio",
                      "summary": "Muy buenas mi gente un saludo desde General Lee esquina Destrampes. Nos tomamos 2 semanitas de vacaciones… muy en contra […]",
                      "enclosure": "https://ia801506.us.archive.org/14/items/elbache-17final/Elbache17final.mp3",
                      "link": "https://tupodcast.com/elbache-17-nos-metieron-el-aquello-es-en-serio/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "31:45",
                      "publishedAt": "2020-09-19T19:03:18+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2034"
                  },
                  {
                      "slug": "el-bache-16-la-guerra-de-los-monguers",
                      "guid": "https://tupodcast.com/?p=2043",
                      "title": "El Bache 16 la guerra de los monguers",
                      "summary": "En una galaxia muy muy lejana, en la constelación de 10 de octubre, 2 monguers se reunieron con un solo […]",
                      "enclosure": "https://ia801508.us.archive.org/23/items/elbache-16/ELBACHE16.mp3",
                      "link": "https://tupodcast.com/el-bache-16-la-guerra-de-los-monguers/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "55:22",
                      "publishedAt": "2020-09-06T16:58:17+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1912"
                  },
                  {
                      "slug": "el-bache-15-fiesta-y-guarapachanga",
                      "guid": "https://tupodcast.com/?p=1950",
                      "title": "El bache 15: FIESTA Y GUARAPACHANGA!",
                      "summary": "Aquí estoy una vez mas, en la esquina de general lee y lacret Con el sudor, el podcast y el […]",
                      "enclosure": "https://ia601500.us.archive.org/17/items/elBache15/elBache15.mp3",
                      "link": "https://tupodcast.com/el-bache-15-fiesta-y-guarapachanga/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "52:44",
                      "publishedAt": "2020-08-24T16:55:43+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1814"
                  },
                  {
                      "slug": "el-bache-14-freefornite",
                      "guid": "https://tupodcast.com/?p=1947",
                      "title": "El bache 14 #FreeFornite",
                      "summary": "Muy buenas mi gente, un saludo desde el pasado…. si, tenemos una semana de atraso… lo se… soy monguer…. pero…. […]",
                      "enclosure": "https://ia601403.us.archive.org/6/items/elBache14/elBache14.mp3",
                      "link": "https://tupodcast.com/el-bache-14-freefornite/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "1:00:42",
                      "publishedAt": "2020-08-23T00:45:13+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1801"
                  },
                  {
                      "slug": "elbache-121-por-que-los-conocemos-y-ustedes-tienen-4-anos",
                      "guid": "https://tupodcast.com/?p=1907",
                      "title": "ElBache 12+1 (por que los conocemos y ustedes tienen 4 años)",
                      "summary": "Pues aquí estamos, un fina de semana más, una nueva etapa de cuarentena en la habana, y los monguers de […]",
                      "enclosure": "https://ia601408.us.archive.org/31/items/el-bache-12-1/ElBache12mas1.mp3",
                      "link": "https://tupodcast.com/elbache-121-por-que-los-conocemos-y-ustedes-tienen-4-anos/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
                      "itunesDuration": "52:19",
                      "publishedAt": "2020-08-10T14:33:23+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1611"
                  }
              ]
          }
      },
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
          "title": "Error en el Sistema",
          "url": "https://tupodcast.com/feed/errorenelsistema",
          "subtitle": "Error en el Sistema",
          "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "kopek@bachecubano.com (TuPodcast)",
          "summary": "Error en el sistema es un podcast de tecnologia con más sátira que noticias, presentado por un trol chimpancé ligeramente evolucionado que cree que es cómico, así que escuche a su propio riesgo.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 17,
          "episodes": {
              "page": 1,
              "pages": 2,
              "objects": [
                  {
                      "slug": "conversando-con-ernesto-acosta",
                      "guid": "https://tupodcast.com/?p=2090",
                      "title": "Conversando con Ernesto Acosta",
                      "summary": "Ernesto Acosta es un podcaster y youtuber cubano, padre fundador del movimiento en la isla, pero más importante que eso, […]",
                      "enclosure": "https://ia801404.us.archive.org/20/items/eees-17/EEES17.mp3",
                      "link": "https://tupodcast.com/conversando-con-ernesto-acosta/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:05:55",
                      "publishedAt": "2020-09-20T15:25:32+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2057"
                  },
                  {
                      "slug": "conversando-con-reinaldo-garcia",
                      "guid": "https://tupodcast.com/?p=1595",
                      "title": "Conversando con Reinaldo Garcia",
                      "summary": "Bienvenidos al episodio #16 de Error en el sistema, un podcast de tecnologia con mas satira que conocimiento técnico, y […]",
                      "enclosure": "https://archive.org/download/reinaldo_garcia/reinaldo_garcia.mp3",
                      "link": "https://tupodcast.com/conversando-con-reinaldo-garcia/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:43:07",
                      "publishedAt": "2020-04-10T23:37:41+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_171"
                  },
                  {
                      "slug": "conversando-con-rancel-ruana",
                      "guid": "https://tupodcast.com/?p=1534",
                      "title": "Conversando con Rancel Ruana",
                      "summary": "Bienvenidos al episodio #15 de Error en el sistema, un podcast de tecnologia con mas satira que conocimiento técnico, y […]",
                      "enclosure": "https://archive.org/download/rancel_bajanda/rancel_bajanda.mp3",
                      "link": "https://tupodcast.com/conversando-con-rancel-ruana/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:57:23",
                      "publishedAt": "2020-03-20T02:17:20+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_172"
                  },
                  {
                      "slug": "conversando-con-erich-garcia-cruz-feat-natasha-tenorio-2da-parte",
                      "guid": "https://tupodcast.com/?p=1338",
                      "title": "Conversando con Erich Garcia Cruz feat Natasha Tenorio (2da parte)",
                      "summary": "Bienvenidos al Episodio #14 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/charla_erich_bachecubano_2daparte/charla_erich_bachecubano_2daparte.mp3",
                      "link": "https://tupodcast.com/conversando-con-erich-garcia-cruz-feat-natasha-tenorio-2da-parte/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:20:08",
                      "publishedAt": "2020-01-31T15:08:52+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_173"
                  },
                  {
                      "slug": "conversando-con-erich-garcia-cruz-ft-natasha-tenorio-1ra-parte",
                      "guid": "https://tupodcast.com/?p=1333",
                      "title": "Conversando con Erich García Cruz ft Natasha Tenorio (1ra Parte)",
                      "summary": "Bienvenidos al Episodio #13 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/charla_erich_bachecubano_1raParte/charla_erich_bachecubano_1raParte.mp3",
                      "link": "https://tupodcast.com/conversando-con-erich-garcia-cruz-ft-natasha-tenorio-1ra-parte/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:10:46",
                      "publishedAt": "2020-01-29T03:32:37+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_174"
                  },
                  {
                      "slug": "entrevista-a-luis",
                      "guid": "https://tupodcast.com/?p=862",
                      "title": "Entrevista a Luis",
                      "summary": "Bienvenidos al Episodio #12 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/entrevista_luis_201912/entrevista_luis.mp3",
                      "link": "https://tupodcast.com/entrevista-a-luis/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "1:21:43",
                      "publishedAt": "2019-12-27T14:51:56+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_175"
                  },
                  {
                      "slug": "nos-vigilan-y-es-legal",
                      "guid": "https://tupodcast.com/?p=665",
                      "title": "Nos vigilan, y es legal",
                      "summary": "Bienvenidos al Episodio #11 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/vigilancia_cuba/vigilancia_cuba.mp3",
                      "link": "https://tupodcast.com/nos-vigilan-y-es-legal/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "9:46",
                      "publishedAt": "2019-11-22T01:45:23+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_176"
                  },
                  {
                      "slug": "quien-eres-y-que-cono-le-has-hecho-a-microsoft",
                      "guid": "https://tupodcast.com/?p=601",
                      "title": "¿Quién eres y que coño le has hecho a Microsoft?",
                      "summary": "Bienvenidos al Episodio #10 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/odio_microsoft/odio_microsoft.mp3",
                      "link": "https://tupodcast.com/quien-eres-y-que-cono-le-has-hecho-a-microsoft/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "13:42",
                      "publishedAt": "2019-10-04T16:56:51+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_177"
                  },
                  {
                      "slug": "entrevista-a-maurice-haedo-de-copincha",
                      "guid": "https://tupodcast.com/?p=599",
                      "title": "Entrevista a Maurice Haedo de «Copincha»",
                      "summary": "Bienvenidos al Episodio #9 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/copincha/copincha.mp3",
                      "link": "https://tupodcast.com/entrevista-a-maurice-haedo-de-copincha/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "26:02",
                      "publishedAt": "2019-10-04T16:30:26+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_178"
                  },
                  {
                      "slug": "entrevista-a-jorge-luis-de-la-fuente",
                      "guid": "https://tupodcast.com/?p=572",
                      "title": "Entrevista a Jorge Luis de la Fuente",
                      "summary": "Bienvenidos al Episodio #8 de Error en el Sistema, un podcast de tecnología con más sátira que noticias, presentado por […]",
                      "enclosure": "https://archive.org/download/entrevista_jorge_luis/entrevista_jorge_luis.mp3",
                      "link": "https://tupodcast.com/entrevista-jorge-luis-de-la-fuente/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/eees_itunes_new.jpg",
                      "itunesDuration": "25:55",
                      "publishedAt": "2019-09-27T01:32:16+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_179"
                  }
              ]
          }
      },
      {
          "title": "Espacio Binario",
          "url": "https://anchor.fm/s/1c6df2b0/podcast/rss",
          "subtitle": "Podcast de tecnología y programación. Resultado de la colaboración de integrantes del core de https://binary-coffee.dev.\n\nHola a todos y bienvenidos a este Espacio Binario, el cual queremos se convierta en el radar tecnológico de Cuba. Encontrarnos una vez al mes, a la semana o cuando el tiempo nos lo permita y hablar sobre tecnologías y desarrollo en Cuba. Estamos aquí para aportar un poco más al mundo del podcasting Cubano.\n\nEstamos en Twitter: https://twitter.com/espac10binar10",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4669676/4669676-1586574061149-68b8b3e2af157.jpg",
          "link": "https://anchor.fm/espaciobinario",
          "author": "Raul C. Rivero",
          "summary": "Podcast de tecnología y programación. Resultado de la colaboración de integrantes del core de https://binary-coffee.dev.\n\nHola a todos y bienvenidos a este Espacio Binario, el cual queremos se convierta en el radar tecnológico de Cuba. Encontrarnos una vez al mes, a la semana o cuando el tiempo nos lo permita y hablar sobre tecnologías y desarrollo en Cuba. Estamos aquí para aportar un poco más al mundo del podcasting Cubano.\n\nEstamos en Twitter: https://twitter.com/espac10binar10",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 4,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "episodio-3-la-lucha-entre-sql-y-nosql-parte-ii",
                      "guid": "ff1df1e7-4a32-4e9a-b585-60fef805104f",
                      "title": "Episodio 3: La lucha entre SQL y NoSQL (Parte II)",
                      "summary": "<p>¿Cuándo usar SQL o NoSQL? ¿Cuáles son los tamaños de las bases de datos de las empresas más grandes del mundo? Descúbrelo acá!</p>",
                      "enclosure": "https://anchor.fm/s/1c6df2b0/podcast/play/19873958/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-19%2F7ad47703-8011-ac16-7d67-5959d8961eaa.mp3",
                      "link": "https://anchor.fm/espaciobinario/episodes/Episodio-3-La-lucha-entre-SQL-y-NoSQL-Parte-II-ejt0n6",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4669676/4669676-1586574061149-68b8b3e2af157.jpg",
                      "itunesDuration": "1280",
                      "publishedAt": "2020-09-20T00:00:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2036"
                  },
                  {
                      "slug": "episodio-2-la-lucha-entre-sql-y-nosql",
                      "guid": "9d063ae0-ce1e-48a4-aa93-dffc7d826d04",
                      "title": "Episodio 2: La lucha entre SQL y NoSQL",
                      "summary": "<p>Si quieres conocer acerca de estas dos tecnologías escucha este episodio donde te damos las bases para que sepas cuando elegir una u otra para tus proyectos.<br>\n<br>\nVisita <a href=\"https://binary-coffee.dev\">https://binary-coffee.dev</a></p>",
                      "enclosure": "https://anchor.fm/s/1c6df2b0/podcast/play/18927793/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-1%2F136c7576-8640-7f00-e818-6ff5f0348865.mp3",
                      "link": "https://anchor.fm/espaciobinario/episodes/Episodio-2-La-lucha-entre-SQL-y-NoSQL-ej04nh",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4669676/4669676-1586574061149-68b8b3e2af157.jpg",
                      "itunesDuration": "1217",
                      "publishedAt": "2020-09-01T21:00:20+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1862"
                  },
                  {
                      "slug": "episodio-1-php-un-lenguaje-polemico",
                      "guid": "c7c3389c-8ef4-45cd-b8da-700eeba70b69",
                      "title": "Episodio 1: PHP un lenguaje polémico",
                      "summary": "<p>Conoce la historia de PHP y el por qué es un lenguaje tan polémico entre desarrolladores. Exponemos nuestras experiencias y las razones que creemos lo han afianzado entre la comunidad.</p>",
                      "enclosure": "https://anchor.fm/s/1c6df2b0/podcast/play/16957868/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-6-23%2F2dab1d77-99a6-bc4b-e868-8667de10aad5.mp3",
                      "link": "https://anchor.fm/espaciobinario/episodes/Episodio-1-PHP-un-lenguaje-polmico-eh40vc",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4669676/4669676-1586574061149-68b8b3e2af157.jpg",
                      "itunesDuration": "1748",
                      "publishedAt": "2020-07-23T00:08:18+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1216"
                  },
                  {
                      "slug": "episodio-0-quienes-somos",
                      "guid": "9c75e4b1-aa07-4a22-9251-775670fd0ade",
                      "title": "Episodio 0: ¿Quiénes somos?",
                      "summary": "<p>Conoce sobre el surgimiento de este pódcast, la historia que tiene detrás de cada uno de sus integrantes y el proyecto que los une.&nbsp;</p>",
                      "enclosure": "https://anchor.fm/s/1c6df2b0/podcast/play/16799602/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-6-19%2F957f14a8-a0fa-dcbe-6de7-b860400704eb.mp3",
                      "link": "https://anchor.fm/espaciobinario/episodes/Episodio-0-Quines-somos-egv6di",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4669676/4669676-1586574061149-68b8b3e2af157.jpg",
                      "itunesDuration": "824",
                      "publishedAt": "2020-07-19T18:32:18+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1175"
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
          "title": "La Mente Creativa",
          "url": "https://anchor.fm/s/164f2390/podcast/rss",
          "subtitle": "Un pódcast de Carlos Lugones sobre emprendimiento y crecimiento personal, con un toque a veces tecnológico.",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
          "link": "https://lugodev.com/podcast",
          "author": "Carlos Lugones",
          "summary": "Un pódcast de Carlos Lugones sobre emprendimiento y crecimiento personal, con un toque a veces tecnológico.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 24,
          "episodes": {
              "page": 1,
              "pages": 3,
              "objects": [
                  {
                      "slug": "22-adios-cubanvalley-una-raya-mas-para-el-tigre",
                      "guid": "1f5f3839-0874-4566-8609-70a3755fbcac",
                      "title": "#22 - Adiós CubanValley: una raya más para el tigre.",
                      "summary": "<p>Kevin Coto y yo decidimos cerrar CubanValley, el medio de comunicación que abrimos para apoyar a los emprendimientos tecnológicos en Cuba. En este episodio explico los motivos y lo que aprendí a partir de la experiencia.</p>\n<p><br></p>\n<p>Archivo de los artículos de CubanValley:</p>\n<p><a href=\"https://link.lugodev.com/cubanvalley\">https://link.lugodev.com/cubanvalley</a></p>\n<p><br></p>\n<p>A la venta el dominio CubanValley.com:</p>\n<p><a href=\"https://www.namecheap.com/domains/registration/results/?domain=cubanvalley.com \">https://www.namecheap.com/domains/registration/results/?domain=cubanvalley.com&nbsp;</a></p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/22\">https://lugodev.com/podcast/22</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/25270161/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-0-16%2F742c168c-749b-d681-7de2-ebb80b6a676a.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/22---Adis-CubanValley-una-raya-ms-para-el-tigre-ep1meh",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "670",
                      "publishedAt": "2021-01-16T05:56:54+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3199"
                  },
                  {
                      "slug": "21-bienestar-digital-para-creativos-asi-manejo-mis-redes-sociales",
                      "guid": "de61d1e9-2564-42ad-9630-0aa4d40a816e",
                      "title": "#21 - Bienestar digital para creativos. Así manejo mis redes sociales.",
                      "summary": "<p>Primer episodio del 2021, arrancando el año con una reflexión para todos los creativos: ¿Cómo manejar tus redes sociales? Hablo de la postura a tener, cómo enfrentar la vida pública, cómo pasé de ser consumidor a productor, los públicos, ser inaccesible y consejos generales basados 100% en mi experiencia personal. Hablo de lo que vivo y experimento.</p>\n<p><br></p>\n<p>Lo más importante es que lleves lo mejor de este episodio a la práctica y que lo compartas con otras personas a quienes les pueda ayudar.</p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/21\">https://lugodev.com/podcast/21</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/24676386/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2021-0-2%2F142324992-44100-2-6ccabfc079511.m4a",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/21---Bienestar-digital-para-creativos--As-manejo-mis-redes-sociales-eofij2",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "1894",
                      "publishedAt": "2021-01-02T15:21:41+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2995"
                  },
                  {
                      "slug": "20-david-nieves-ceo-de-devmanextensions",
                      "guid": "7ce02acf-2e25-4c4a-8b3d-3401c28a57d7",
                      "title": "#20 - David Nieves, CEO de DevmanExtensions",
                      "summary": "<p>David Nieves, en una exclusiva y primera aparición en un pódcast, nos cuenta cómo pasó de ser empleado, a autoempleado, dueño de negocio e inversionista, desde programador a dueño de aplicaciones para manejar clubs de golf, de tenis y de gimnasios de crossfit. David es un empresario español, CEO de DevmanExtensions, una excelente persona con la cual he tenido la dicha de llevar a cabo un proyecto que está cerca de su lanzamiento: FlowyCart.</p>\n<p><br></p>\n<p>Este es un episodio especial con excelentes consejos para todos los que quieran convertirse en emprendedores o ya lo sean, hablamos de hábitos, persistencia, resiliencia, estoicismo, minimalismo y mucho más, todo condensado en 1h y 24min.</p>\n<p><br></p>\n<p>DevmanExtensions:</p>\n<p><a href=\"https://devmanextensions.com\">https://devmanextensions.com</a></p>\n<p><a href=\"mailto:info@devmanextensions.com\">info@devmanextensions.com</a></p>\n<p><br></p>\n<p><strong>Notas del episodio:</strong></p>\n<p><a href=\"https://lugodev.com/podcast/20\">https://lugodev.com/podcast/20</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/23989892/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-15%2F80baa911-583e-0366-98fd-8e1116b87d5e.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/20---David-Nieves--CEO-de-DevmanExtensions-enqk64",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "5067",
                      "publishedAt": "2020-12-15T01:05:01+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2849"
                  },
                  {
                      "slug": "19-el-bot-de-telegram-que-regala-bitcoins",
                      "guid": "b2285723-dbc0-4be3-93df-f472fcfc11ee",
                      "title": "#19 - El bot de Telegram que regala Bitcoins",
                      "summary": "<p>Eustaquio me escribió desde España para invitarme a crear un bot como ese que él está usando, que le permite \"minar\" BTC sin hacer nada, y ganar dinero. ¿En serio Eustaquio, brother?</p>\n<p><br></p>\n<p>En este episodio te demuestro que este tipo de bots son estafas piramidales y que no deberías perder tu tiempo en eso. Comparte el episodio con todos tus amigos que dicen que están ganando BTC de esta forma, para que abran los ojos.</p>\n<p><br></p>\n<p>Esquema ponzi, según Wikipedia:</p>\n<p><a href=\"https://es.wikipedia.org/wiki/Esquema_Ponzi\">https://es.wikipedia.org/wiki/Esquema_Ponzi</a></p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/19\">https://lugodev.com/podcast/19</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/23902208/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-13%2F2aefdc3e-2399-9d8c-ad16-dbc99fbf51d9.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/19---El-bot-de-Telegram-que-regala-Bitcoins-ennui0",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "873",
                      "publishedAt": "2020-12-13T06:09:18+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2834"
                  },
                  {
                      "slug": "18-un-crowdfunding-un-panel-de-google-y-otras-noticias",
                      "guid": "3e2b4df5-fa68-465a-aa4b-74e7e680fe07",
                      "title": "#18 - Un crowdfunding, un panel de Google y otras noticias",
                      "summary": "<p>Episodio de noticias recientes donde te cuento sobre el crowdfunding que hicimos para CubaPod, lo que aprendimos a partir de esa experiencia. También sobre cómo obtuve mi panel de Google, por qué creo que deberías mostrar el proceso creativo de tu startup y una noticia \"tensa\".</p>\n<p><br></p>\n<p>Hilo del crowdfunding en Twitter:</p>\n<p><a href=\"https://twitter.com/lugodev/status/1333550103068598274?s=19\">https://twitter.com/lugodev/status/1333550103068598274?s=19</a></p>\n<p><br></p>\n<p>Sobre el panel de Google:</p>\n<p><a href=\"https://link.lugodev.com/panel-google\">https://link.lugodev.com/panel-google</a></p>\n<p><br></p>\n<p>Sobre por qué mostrar el proceso creativo de tu startup:</p>\n<p><a href=\"https://go.cubanvalley.com/mostrar-startup\">https://go.cubanvalley.com/mostrar-startup</a></p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/18\">https://lugodev.com/podcast/18</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/23765655/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-10%2F9dc865ab-8354-199c-4533-e5579197839d.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/18---Un-crowdfunding--un-panel-de-Google-y-otras-noticias-enjp6n",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "818",
                      "publishedAt": "2020-12-10T02:35:59+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2800"
                  },
                  {
                      "slug": "17-kevin-coto-juventud-talento-y-futuro",
                      "guid": "9ee8e1de-37dd-4832-bd99-9a449916aa3f",
                      "title": "#17 - Kevin Coto: juventud, talento y futuro",
                      "summary": "<p>Converso con mi amigo Kevin Coto sobre su historia, nuestro proyecto CubanValley y la mentalidad necesaria para los emprendedores en el mundo de hoy.</p>\n<p><br></p>\n<p>Si deseas patrocinar nuestro proyecto o convertirte en redactor, contáctanos.</p>\n<p><br></p>\n<p>Sigue a Kevin Coto:</p>\n<p><a href=\"https://twitter.com/KevinCoto_\">https://twitter.com/KevinCoto_</a></p>\n<p><br></p>\n<p>CubanValley:</p>\n<p><a href=\"https://cubanvalley.com\">https://cubanvalley.com</a></p>\n<p><a href=\"mailto:contacto@cubanvalley.com\">contacto@cubanvalley.com</a></p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/17\">https://lugodev.com/podcast/17</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/23098941/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-25%2Fec4b61af-f37d-d0cb-5981-bd323409dc1f.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/17---Kevin-Coto-juventud--talento-y-futuro-emve3t",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "1859",
                      "publishedAt": "2020-11-25T10:52:26+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2611"
                  },
                  {
                      "slug": "16-rompiendo-el-silencio-con-noticias",
                      "guid": "0306675a-083c-4cfd-ad1c-46f9ac9cc7f6",
                      "title": "#16 - Rompiendo el silencio, con noticias",
                      "summary": "<p>Un mes sin grabar. Aquí les traigo un update con noticias de lo que he estado creando, proyectos y novedades en la comunidad.</p>\n<p><br></p>\n<p>Canal de Telegram:</p>\n<p><a href=\"https://link.lugodev.com/telegram\">https://link.lugodev.com/telegram</a></p>\n<p><br></p>\n<p>Comunidad en Discord:</p>\n<p><a href=\"https://link.lugodev.com/discord\">https://link.lugodev.com/discord</a></p>\n<p><br></p>\n<p>Canal de Youtube:</p>\n<p><a href=\"https://link.lugodev.com/youtube\">https://link.lugodev.com/youtube</a></p>\n<p><br></p>\n<p>Newsletter:</p>\n<p><a href=\"https://link.lugodev.com/newsletter\">https://link.lugodev.com/newsletter</a></p>\n<p><br></p>\n<p>Blog:</p>\n<p><a href=\"https://link.lugodev.com/blog\">https://link.lugodev.com/blog</a></p>\n<p><br></p>\n<p>Ofendiditos:</p>\n<p><a href=\"https://ofendiditos.club\">https://ofendiditos.club</a></p>\n<p><br></p>\n<p>CubanValley:</p>\n<p><a href=\"https://cubanvalley.com\">https://cubanvalley.com</a></p>\n<p><br></p>\n<p>CubaPod:</p>\n<p><a href=\"https://cubapod.net\">https://cubapod.net</a></p>\n<p><br></p>\n<p>Notas del episodio:</p>\n<p><a href=\"https://lugodev.com/podcast/16\">https://lugodev.com/podcast/16</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/22819662/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-19%2Fba09d9ea-e30f-8632-a72e-e830b9dd9c7c.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/16---Rompiendo-el-silencio--con-noticias-emmtce",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "1475",
                      "publishedAt": "2020-11-19T13:31:55+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2576"
                  },
                  {
                      "slug": "15-cuba-ano-2035",
                      "guid": "38b4f167-8c7c-472f-bbaa-37c562454760",
                      "title": "#15 - Cuba, año 2035",
                      "summary": "<p>Episodio especial que trae un vistazo a la Cuba del 2035 y un mensaje a todos los cubanos.</p>\n<p><br></p>\n<p><strong>Notas del episodio:</strong></p>\n<p><a href=\"https://lugodev.com/podcast/15\">lugodev.com/podcast/15</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/20590685/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-9-4%2Fb0627392-0eae-837a-738d-f69fae83dc1c.mp3",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/15---Cuba--ao-2035-ekiskt",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "464",
                      "publishedAt": "2020-10-04T11:30:11+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2190"
                  },
                  {
                      "slug": "142-alian-rignack-de-cubanengineer-parte-2",
                      "guid": "ef933255-e492-4b2d-aaa5-bf665481b267",
                      "title": "#14.2 - Alián Rigñack, de Cuban.Engineer. Parte 2.",
                      "summary": "<p>Hoy converso con <a href=\"//twitter.com/alinarignack\">Alián Rigñack</a>, ingeniero a cargo del Business Development en <a href=\"//cuban.engineer\">Cuban.Engineer</a>, una casa de software cubana. Conoce las interioridades de este negocio, cómo manejan su tiempo y mucho más.</p>\n<p>En este episodio intentamos además grabar la conversación en vídeo para Youtube, pero por problemas técnicos, no fue posible. Nos disculpan el ruido en la grabación; a pesar de todo, les traemos un episodio con alto valor en contenido e ideas.</p>\n<p>Parte 2 y final.</p>\n<p><strong>Notas del episodio:</strong></p>\n<p><a href=\"//lugodev.com/podcast/14-2\">lugodev.com/podcast/14-2</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/20199618/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-26%2F112136857-44100-2-e86bd2b58a6cb.m4a",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/14-2---Alin-Rigack--de-Cuban-Engineer--Parte-2-ek6uo2",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "2048",
                      "publishedAt": "2020-09-26T19:34:17+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2120"
                  },
                  {
                      "slug": "141-alian-rignack-de-cubanengineer",
                      "guid": "657ca890-c9ec-452e-9a2e-a50346075e2c",
                      "title": "#14.1 - Alián Rigñack, de Cuban.Engineer",
                      "summary": "<p>Hoy converso con <a href=\"https://twitter.com/alianrignack\">Alián Rigñack</a>, ingeniero a cargo del Business Development en <a href=\"//cuban.engineer\">Cuban.Engineer</a>, una casa de software cubana. Conoce las interioridades de este negocio, cómo manejan su tiempo y mucho más.</p>\n<p>En este episodio intentamos además grabar la conversación en vídeo para Youtube, pero por problemas técnicos, no fue posible. Nos disculpan el ruido en la grabación; a pesar de todo, les traemos un episodio con alto valor en contenido e ideas.</p>\n<p>Parte 1.</p>\n<p><strong>Notas del episodio:</strong></p>\n<p><a href=\"//lugodev.com/podcast/14-1\">lugodev.com/podcast/14-1</a></p>",
                      "enclosure": "https://anchor.fm/s/164f2390/podcast/play/20045935/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-8-23%2F110971074-44100-2-40cfe0eb33076.m4a",
                      "link": "https://anchor.fm/la-mente-creativa/episodes/14-1---Alin-Rigack--de-Cuban-Engineer--Parte-1-ek28lf",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_nologo/3642852/3642852-1599800438688-e8122a5139665.jpg",
                      "itunesDuration": "2379",
                      "publishedAt": "2020-09-23T14:09:25+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2085"
                  }
              ]
          }
      },
      {
          "title": "madrugadas tech de cubageek",
          "url": "https://anchor.fm/s/28786108/podcast/rss",
          "subtitle": "Noticias del mundo tech, charlas, enfrentados y debates tecnológicos.",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
          "link": "https://anchor.fm/s/28786108/podcast/www.cubageek.net",
          "author": "cubageek",
          "summary": "Noticias del mundo tech, charlas, enfrentados y debates tecnológicos.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 6,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "los-nuevos-procesadores-de-apple-ya-estan-aqui",
                      "guid": "26db7b6a-80eb-483c-9d40-2f095635e515",
                      "title": "Los nuevos procesadores de Apple ¿ya están aquí?",
                      "summary": "<p>👉 Invitamos a Fran Besora de iSenaCode para que nos ofrezca su opinión</p>\n<p>👉 Hablamos del evento de Apple de este 10 de noviembre</p>\n<p>🔮 Adivinamos qué otro producto veremos en el #OneMoreThing</p>\n<p>TWITTER</p>\n<p><a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Ftwitter.com%2FCubaGeek&amp;redir_token=QUFFLUhqazlsVXpDZVp2dWliNGJvTzF0VVRJV3BieXVCQXxBQ3Jtc0trY1VIVG9fTmpCMjUzVGpFb3VZZXZCbDZHMmZqNGRpNm9tbXNNZFFHTGVrMXk2VWQybFlXbVMyWGxVYVF6alJ3VUMyem5NbjY3aDJGU1c2bVhBNDJZaUw1NFZWUzNMelJjenI3NlZ5Z1dNWklGYjI3SQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\">https://twitter.com/CubaGeek</a></p>\n<p>YOUTUBE</p>\n<p><a href=\"https://www.youtube.com/channel/UCMsRqhMn1Y0f4BUPE3j6nbg?view_as=subscriber\">https://www.youtube.com/channel/UCMsR...</a></p>\n<p>FACEBOOK</p>\n<p><a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2FCubaGeek-106484867687174&amp;redir_token=QUFFLUhqbWVUWWE3ZUxBMzU4RzhCZC1PX1FsOVNlMzViQXxBQ3Jtc0trNVMxWVZhWXVJX1p4STlhaXoxaHZoMVl0RzdyU2w4eEFfcEV4MElpYXNKMkFMV2FuM1RRXzF6bHlab3I1Yml5YUdvbFBocS1RNk94dmphZUhvMVZkZkx1NVYzYlFTa21kQ1ZjTUh6ZlBJTEgwZzJ0UQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\">https://www.facebook.com/CubaGeek-106...</a></p>\n<p>INSTAGRAM</p>\n<p><a href=\"https://www.instagram.com/cubageek/\">https://www.instagram.com/cubageek/</a></p>\n<p>UNETE A NUSTRA COMUNIDAD EN TELEGRAM</p>\n<p>https://t.me/cubageek</p>",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/22187260/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-06%2F111d343022528375599ab0aec1e23798.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Los-nuevos-procesadores-de-Apple-ya-estn-aqu-em3jps",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "1987",
                      "publishedAt": "2020-11-06T05:17:30+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2497"
                  },
                  {
                      "slug": "apple-one-pisa-fuerte-que-hara-google",
                      "guid": "ff618a7a-b468-4455-9384-035d2f956ad4",
                      "title": "🍎 Apple One pisa fuerte: ¿qué hará Google?",
                      "summary": "<p>Apple ha dado un nuevo salto cualitativo al ofrecer por un precio total menor una serie de servicios que estaban dispersos y quizás por separado no eran tan atractivos frente a la competencia.</p>\n<p>Con la salida al mercado de #AppleOne se espera la reacción de otros competidores.</p>\n<p>🤷 ¿Tendremos un paquete de servicios por una tarifa única de Google?</p>\n<p>👉¿Qué ofrecen otras compañías como Amazon?</p>\n<p>🤔¿Qué le falta a Apple en su lista de opciones que otros ya tienen?</p>\n<p>👂Escucha el análisis en esta emisión.</p>\n<p>TWITTER</p>\n<p><a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Ftwitter.com%2FCubaGeek&amp;redir_token=QUFFLUhqazlsVXpDZVp2dWliNGJvTzF0VVRJV3BieXVCQXxBQ3Jtc0trY1VIVG9fTmpCMjUzVGpFb3VZZXZCbDZHMmZqNGRpNm9tbXNNZFFHTGVrMXk2VWQybFlXbVMyWGxVYVF6alJ3VUMyem5NbjY3aDJGU1c2bVhBNDJZaUw1NFZWUzNMelJjenI3NlZ5Z1dNWklGYjI3SQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\">https://twitter.com/CubaGeek</a></p>\n<p>YOUTUBE</p>\n<p><a href=\"https://www.youtube.com/channel/UCMsRqhMn1Y0f4BUPE3j6nbg?view_as=subscriber\">https://www.youtube.com/channel/UCMsR...</a></p>\n<p>FACEBOOK</p>\n<p><a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2FCubaGeek-106484867687174&amp;redir_token=QUFFLUhqbWVUWWE3ZUxBMzU4RzhCZC1PX1FsOVNlMzViQXxBQ3Jtc0trNVMxWVZhWXVJX1p4STlhaXoxaHZoMVl0RzdyU2w4eEFfcEV4MElpYXNKMkFMV2FuM1RRXzF6bHlab3I1Yml5YUdvbFBocS1RNk94dmphZUhvMVZkZkx1NVYzYlFTa21kQ1ZjTUh6ZlBJTEgwZzJ0UQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\">https://www.facebook.com/CubaGeek-106...</a></p>\n<p>INSTAGRAM</p>\n<p><a href=\"https://www.instagram.com/cubageek/\">https://www.instagram.com/cubageek/</a></p>\n<p>UNETE A NUSTRA COMUNIDAD EN TELEGRAM</p>\n<p>https://t.me/cubageek</p>",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/22082706/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-04%2F2cedc15d1283996f2aec3a064526515f.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Apple-One-pisa-fuerte-qu-har-Google-em0dmi",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "1941",
                      "publishedAt": "2020-11-04T06:04:15+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2465"
                  },
                  {
                      "slug": "mentiras-polemica-y-5g-despues-de-la-keynote",
                      "guid": "29b29454-a088-4c67-aacc-a63f404ec3f5",
                      "title": "Mentiras, polémica y 5G: después de la Keynote",
                      "summary": "<p>Más que el evento en sí de este 13 de octubre, lo que ha motivado la polémica es lo que no vimos. Una subida de 129 USD al #iPhone básico, estándares #5G que no convencen y los cargadores ausentes.</p>\n<p>👉 Conéctate ahora 👈</p>\n<p>TWITTER <a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Ftwitter.com%2FCubaGeek&amp;redir_token=QUFFLUhqazlsVXpDZVp2dWliNGJvTzF0VVRJV3BieXVCQXxBQ3Jtc0trY1VIVG9fTmpCMjUzVGpFb3VZZXZCbDZHMmZqNGRpNm9tbXNNZFFHTGVrMXk2VWQybFlXbVMyWGxVYVF6alJ3VUMyem5NbjY3aDJGU1c2bVhBNDJZaUw1NFZWUzNMelJjenI3NlZ5Z1dNWklGYjI3SQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">https://twitter.com/CubaGeek</a>&nbsp;</p>\n<p>YOUTUBE <a href=\"https://www.youtube.com/channel/UCMsRqhMn1Y0f4BUPE3j6nbg?view_as=subscriber\" rel=\"nofollow\">https://www.youtube.com/channel/UCMsR...</a>&nbsp;</p>\n<p>FACEBOOK &nbsp;<a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.facebook.com%2FCubaGeek-106484867687174&amp;redir_token=QUFFLUhqbWVUWWE3ZUxBMzU4RzhCZC1PX1FsOVNlMzViQXxBQ3Jtc0trNVMxWVZhWXVJX1p4STlhaXoxaHZoMVl0RzdyU2w4eEFfcEV4MElpYXNKMkFMV2FuM1RRXzF6bHlab3I1Yml5YUdvbFBocS1RNk94dmphZUhvMVZkZkx1NVYzYlFTa21kQ1ZjTUh6ZlBJTEgwZzJ0UQ%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">https://www.facebook.com/CubaGeek-106...</a>&nbsp;</p>\n<p>INSTAGRAM &nbsp;<a href=\"https://www.youtube.com/redirect?q=https%3A%2F%2Fwww.instagram.com%2Fcubageek%2F&amp;redir_token=QUFFLUhqbE1sYmtFaDk5cnZVOWNfM3FadU1MLVl0b3I1d3xBQ3Jtc0ttTGRKUy1qeFRnOGNDNUxKcVBKX05EYjJVOW1PRUMtZlY5ZmJpU1BzMnpyUHZNVUUzVXFFX1hPOThpQWRCNlFvZGg5TkFHWHluWC1vTXlOR0RDLWtrVkNIMDdmcFF2UTYxVmFTVkttVlgxRWRERzRqNA%3D%3D&amp;v=kQg9VAHUdis&amp;event=video_description\" rel=\"nofollow\" target=\"_blank\">https://www.instagram.com/cubageek/</a></p>",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/21364799/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-20%2Fa52557af7d8b53b9986d96489fc553f9.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Mentiras--polmica-y-5G-despus-de-la-Keynote-elagjv",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "2840",
                      "publishedAt": "2020-10-20T07:53:37+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2331"
                  },
                  {
                      "slug": "resumen-del-evento-de-apple-4-iphones-con-diseno-renovado-nuevo-homepod-mini-y-mucho-mas",
                      "guid": "6312bdd7-44e8-4dc1-9127-a64c71451fa9",
                      "title": "Resumen del evento de Apple. 4 iPhones con diseño renovado, nuevo HomePod mini y mucho más",
                      "summary": "<p>Resumen del evento de apple. 4 iPhones HomePod mini y muchas mejoras. opiniones debates y mucho más.&nbsp;</p>\n<p>síguenos en tu plataforma de podcast favorita.</p>\n<p>síguenos en nuestras Redes sociales:</p>\n<p>YouTube</p>\n<p>https://www.youtube.com/channel/UCMsRqhMn1Y0f4BUPE3j6nbg?view_as=subscriber</p>\n<p>twitter</p>\n<p>https://twitter.com/CubaGeek</p>\n<p>Facebook</p>\n<p>https://www.facebook.com/CubaGeek-106484867687174</p>\n<p>instagram</p>\n<p>https://www.instagram.com/cubageek/</p>",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/21077325/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-14%2F0813b3191f158662d281238af4149dd6.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Resumen-del-evento-de-Apple--4-iPhones-con-diseo-renovado--nuevo-HomePod-mini-y-mucho-ms-el1nsd",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "3653",
                      "publishedAt": "2020-10-14T08:40:15+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2288"
                  },
                  {
                      "slug": "episodio-1-rumores-y-filtraciones-sobre-lo-que-veremos-en-el-proximo-evento-de-apple-el-13-de-octubre",
                      "guid": "a6f81e69-08f5-4a44-a6b8-d0a9591fdaaf",
                      "title": "Episodio #1 Rumores y filtraciones sobre lo que veremos en el próximo evento de apple el 13 de octubre.",
                      "summary": "<p>Estaremos debatiendo y dando nuestra opinión sobre los rumores y filtraciones de lo que veremos en el próximo evento de apple el 13 de octubre.</p>\n<p>síguenos en tu plataforma de podcast favorita.</p>\n<p>síguenos en nuestras Redes sociales:</p>\n<p>YouTube</p>\n<p>https://www.youtube.com/channel/UCMsRqhMn1Y0f4BUPE3j6nbg?view_as=subscriber</p>\n<p>twitter</p>\n<p>https://twitter.com/CubaGeek</p>\n<p>Facebook&nbsp;</p>\n<p>https://www.facebook.com/CubaGeek-106484867687174</p>\n<p>instagram&nbsp;</p>\n<p>https://www.instagram.com/cubageek/</p>",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/20959816/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-13%2F513cfd1c2218c562a89548a2497cf51d.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Episodio-1-Rumores-y-filtraciones-sobre-lo-que-veremos-en-el-prximo-evento-de-apple-el-13-de-octubre-eku548",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "2619",
                      "publishedAt": "2020-10-12T06:37:23+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2270"
                  },
                  {
                      "slug": "trailer-de-las-madrugadas-tecnologicas-de-cubageek",
                      "guid": "c0122180-e872-4016-a2c3-2762cf7d89b1",
                      "title": "Trailer de las madrugadas tecnológicas de cubageek.",
                      "summary": "Te explicamos en qué consistirá nuestro podcast.",
                      "enclosure": "https://anchor.fm/s/28786108/podcast/play/20611198/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-10-05%2F90c324f98604ffc59b7e7a7ae0a0fa7c.m4a",
                      "link": "https://anchor.fm/cubageek/episodes/Trailer-de-las-madrugadas-tecnolgicas-de-cubageek-ekjglu",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/6689778/6689778-1602022300077-d70ff81b25f2b.jpg",
                      "itunesDuration": "48",
                      "publishedAt": "2020-10-04T21:30:04+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2271"
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
      },
      {
          "title": "Podcasting con Albert",
          "url": "https://anchor.fm/s/17fff96c/podcast/rss",
          "subtitle": "Esto es Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcasts, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
          "link": "http://tecnocodeplus.com/",
          "author": "Albert",
          "summary": "Esto es Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcasts, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 12,
          "episodes": {
              "page": 1,
              "pages": 2,
              "objects": [
                  {
                      "slug": "12-podcast-que-te-recomiendo-escuchar",
                      "guid": "1e3d61f5-f24e-4b6a-9567-5bc1acc4a9c6",
                      "title": "12. Podcast que te recomiendo escuchar.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nAquí te entrego 15 podcast cubanos para que pases un confinamiento entretenido.\nSígueme en Twitter: https://twitter.com/Albert_Pod\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/14778709/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-5%2F79742302-44100-2-9aa91011e5ed4.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/12--Podcast-que-te-recomiendo-escuchar-ef1gsl",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "691",
                      "publishedAt": "2020-06-23T15:30:41+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1006"
                  },
                  {
                      "slug": "11-motivaciones-para-crear-un-podcast",
                      "guid": "c4178ed6-b32d-4352-8df1-12eb65544408",
                      "title": "11. Motivaciones para crear un podcast.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn este episodio te comento sobre cómo mantenerte motivado a crear un podcast. Estos últimos años estamos viendo un aumento de los podcast y se debe a la aplicación de una capa de tecnología barata, con un sistema capaz de personalizar, rastrear y medir cada una de las descargas, convirtiendo un negocio tonto como el de la radio en algo mesurable, mucho más inteligente y eficiente.\nSígueme en Twitter: https://twitter.com/Albert_Pod\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/14778456/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-5%2F79740778-44100-2-a20525e34abde.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/11--Motivaciones-para-crear-un-podcast-ef1gko",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "643",
                      "publishedAt": "2020-06-16T15:30:27+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_941"
                  },
                  {
                      "slug": "10-anchor-esconde-un-truco",
                      "guid": "4dcf0a61-7de6-49ba-b67f-4909887ad21a",
                      "title": "10. Anchor esconde un truco.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn este episodio te comento, cómo tener tu podcast lo más pronto posible en Apple Podcast, claro está siempre y cuando lo distribuyas desde Anchor.\nSígueme en Twitter: https://twitter.com/flyWarriors81\n\n\n\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/14591088/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-1%2F78583339-44100-2-d49ddabfe38df.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/10--Anchor-esconde-un-truco-eerplg",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "543",
                      "publishedAt": "2020-06-02T15:15:34+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_495"
                  },
                  {
                      "slug": "9-mejor-momento-para-subir-tu-podcast",
                      "guid": "b291c408-b192-4061-945b-f5da2b15e7cf",
                      "title": "9. Mejor momento para subir tu podcast.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.                                                       En este episodio nos basamos en una de las teorías del consejo internacional de CEO, donde nos muestran cuando es según estudios realizados, ese mejor momento para compartir tu podcast en las redes sociales y causar una explosión de descargar, yo lo probé y me resultó, por eso creé este episodio para contártelo de primera mano, esperamos que te resulte interesante esta teoría.\n\nSígueme en Twitter:                          https://twitter.com/flyWarriors81\n\n\n\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/14261248/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-25%2F76464808-44100-2-77271c8271a6d.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/9--Mejor-momento-para-subir-tu-podcast-eehni0",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "787",
                      "publishedAt": "2020-05-25T13:30:26+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_496"
                  },
                  {
                      "slug": "8-ivoox-esconde-una-funcion-que-no-sabias",
                      "guid": "069203b1-890b-466f-a906-d585e94d2de8",
                      "title": "8. IVoox esconde una función que no sabías.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn este episodio después de varios días de buscar info, encontramos con que iVoox esconde algo en su interior que quizás muy pocos sabían, analizamos una entrevista que se realizó al CEO de esta app el español Juan Ignacio Solera. Como te contaba, vimos que no necesariamente hay que pagar por la versión Premiun para que iVoox te regale algo de promo gratis, si escucha nuestro episodio, vas a descubrir lo que esconde agregarle las etiquetas en la configuración desde tu cuenta en iVoox ha cada uno de tus podcast. \nSígueme en Twitter: https://twitter.com/flyWarriors81\n\n\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/13924330/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-18%2F74323470-44100-2-1ba0a87b634e1.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/8--IVoox-esconde-una-funcin-que-no-sabas-ee7eha",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "820",
                      "publishedAt": "2020-05-18T13:43:33+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_497"
                  },
                  {
                      "slug": "7-que-debes-hacer-antes-de-lanzar-tu-primer-podcast",
                      "guid": "1ac76c14-884e-4a71-a617-98fb2e7c8564",
                      "title": "7. Que debes hacer antes de lanzar tu primer podcast.",
                      "summary": "RadioAsere es ese espacio donde debatimos sobre desarrollo personal y estilo de vida, también comentamos sobre tecnología y cultura geek, lo cual es un tema muy adecuado para cómo se vive en el mundo actual, donde tenemos como hermano menor nuestro smartphone.\nUn episodio atípico, ya que de primera mano te cuento los pasos básicos que debe seguir cualquier creador de podcast, antes de grabar su primer episodio, si estás en ese selecto club “Bienvenido(a) al mundo del Podcasting”.                              \n                                                             Síguenos en:\n[https://twitter.com/flyWarriors81]\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/13595981/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-11%2F72144383-44100-2-2679f5fdef26c.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/7--Que-debes-hacer-antes-de-lanzar-tu-primer-podcast-edtdsd",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "1352",
                      "publishedAt": "2020-05-11T13:53:04+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_498"
                  },
                  {
                      "slug": "6-mis-7-trucos-para-tener-mas-audiencia-y-mejorar-mis-podcast",
                      "guid": "c06ecfc1-54d2-483d-bde7-934605541900",
                      "title": "6. Mis 7 trucos para tener más audiencia y mejorar mis podcast.",
                      "summary": "Podcasting con Albert, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcast, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn el episodio de hoy te cuento como estos 7 tips o consejos, me han funcionado a mi para mejorar mi contenido en todos mis podcast, por eso decidí compartirlo contigo. Espero que te funcionen tan bien como a mi.\nSígueme en Twitter: [https://twitter.com/flyWarriors81]\n\n\n\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/13274906/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-4%2F70072929-44100-2-16ffa21905e29.mp3",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/6--Mis-7-trucos-para-tener-ms-audiencia-y-mejorar-mis-podcast-edjkaq",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "1526",
                      "publishedAt": "2020-05-04T13:15:21+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_499"
                  },
                  {
                      "slug": "5-tips-para-obtener-un-audio-con-calidad",
                      "guid": "e7447b6d-f85b-46fe-bb5a-eb9c1d1d823e",
                      "title": "5. Tips para obtener un audio con calidad.",
                      "summary": "Esto es Albert.fm/Daily, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcasts, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn el episodio de hoy te comento sobre una opción la cual yo uso para grabar los episodios en grupo, realmente me brinda una calidad excelente en tema audio y me es mucho más fácil para todo espero a ti como podcaster te sirva este consejo.\nSígueme en Twitter: https://twitter.com/flyWarriors81\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/12675089/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-3-20%2F66103697-44100-2-40348a2a1eaf5.m4a",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/5--Tips-para-obtener-un-audio-con-calidad-ed1aih",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "869",
                      "publishedAt": "2020-04-20T15:51:07+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_500"
                  },
                  {
                      "slug": "4-como-hago-para-editar-los-audios",
                      "guid": "7ec563e4-a85d-48f2-af26-b0b802c4a36d",
                      "title": "4. Como hago para editar los audios.",
                      "summary": "Esto es Albert.fm/Daily, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcasts, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn el programa de hoy te contamos todo sobre esta genial app HOKUSAI2, la cual está disponible tanto para iOS como para Android. Hokusai2 es esa variante con la cual desde tu dispositivo móvil, tu iPad o tableta podrás hacer magia con la edición de audio de tu podcasts, lo mejor que tiene es que esta Gratis en la AppStore y Playstore.\n\nSígueme en Twitter: https://twitter.com/flyWarriors81\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/12457979/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-3-15%2F64749086-44100-2-7a5c0ecd2f08b.m4a",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/4--Como-hago-para-editar-los-audios-ecqmhr",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "908",
                      "publishedAt": "2020-04-15T14:54:18+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_501"
                  },
                  {
                      "slug": "3-anchor-se-actualizo-con-nuevas-novedades-visuales",
                      "guid": "eb5b09f8-1514-497e-a0f3-a499012eb741",
                      "title": "3. Anchor se actualizó con nuevas novedades visuales.",
                      "summary": "Esto es Albert.fm/Daily, un espacio donde voy a contarte sobre:\nMicrófonos, técnicas de grabación, publicación, edición, como medir tu audiencia, entrevistas a Podcaster.\nEn fin acá encontrarás un Podcasts, donde vamos a hablar de Podcasting porque no hay algo que le guste más a un Podcasters, que hablar de Podcasting.\nEn el episodio de hoy te comentamos sobre Anchor y la nueva actualización de esta app\nSígueme en Twitter: https://twitter.com/flyWarriors81\n\n\n\n\n--- \n\nSend in a voice message: https://anchor.fm/podcastingconalbert/message",
                      "enclosure": "https://anchor.fm/s/17fff96c/podcast/play/12125955/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-3-7%2F62503092-44100-2-db38a2c91dcae.m4a",
                      "link": "https://anchor.fm/podcastingconalbert/episodes/3--Anchor-se-actualiz-con-nuevas-novedades-visuales-ecgia3",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/3926515/3926515-1591251817060-57dd6acec436.jpg",
                      "itunesDuration": "818",
                      "publishedAt": "2020-04-07T16:51:34+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_502"
                  }
              ]
          }
      },
      {
          "title": "PodcastInside",
          "url": "https://tupodcast.com/feed/podcastinside",
          "subtitle": "TuPodcast",
          "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "elavdeveloper@gmail.com (TuPodcast)",
          "summary": "Podcast del proyecto SystemInside (anteriormente llamado SystemInside Podcast) donde se tocan temas sobre el mundo de la Tecnología y la Informática.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 66,
          "episodes": {
              "page": 1,
              "pages": 7,
              "objects": [
                  {
                      "slug": "menos-es-mas",
                      "guid": "https://tupodcast.com/?p=1633",
                      "title": "Menos es mas",
                      "summary": "Bienvenidos a un episodio extra muy especial. Este será un episodio multi-podcast, o sea, se publicará en varios de los […]",
                      "enclosure": "https://archive.org/download/masesmenos_202004/masesmenos.mp3",
                      "link": "https://tupodcast.com/menos-es-mas/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "7:10",
                      "publishedAt": "2020-04-28T03:56:17+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1770"
                  },
                  {
                      "slug": "por-que-apple-y-otras-companias-siguen-y-seguiran-en-china",
                      "guid": "https://tupodcast.com/?p=1628",
                      "title": "¿Por qué Apple y otras compañías siguen y seguirán en China?",
                      "summary": "Bienvenidos al Episodio 66 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com En este episodio les comento […]",
                      "enclosure": "https://archive.org/download/apple-china/Apple_China.mp3",
                      "link": "https://tupodcast.com/por-que-apple-y-otras-companias-siguen-y-seguiran-en-china/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "12:15",
                      "publishedAt": "2020-04-27T02:15:53+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_365"
                  },
                  {
                      "slug": "snap-flatpak-appimage-problema-o-solucion",
                      "guid": "https://tupodcast.com/?p=1577",
                      "title": "Snap, Flatpak, AppImage ¿problema o solución?",
                      "summary": "Bienvenidos al Episodio 65 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com ¿Son los paquetes Snap, FlatPak […]",
                      "enclosure": "https://archive.org/download/snap_flatpack_appimage/snap_flatpack_appimage.mp3",
                      "link": "https://tupodcast.com/snap-flatpak-appimage-problema-o-solucion/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "5:54",
                      "publishedAt": "2020-04-01T00:52:40+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_366"
                  },
                  {
                      "slug": "el-coronavirus-ha-estancado-la-tecnologia-pero-no-tenemos-ya-suficiente",
                      "guid": "https://tupodcast.com/?p=1561",
                      "title": "El Coronavirus ha estancado la tecnología, pero ¿no tenemos ya suficiente?",
                      "summary": "Bienvenidos al Episodio 64 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com ¿Qué pasa si con toda […]",
                      "enclosure": "https://archive.org/download/tecnologia_estancada/tecnologia_estancada.mp3",
                      "link": "https://tupodcast.com/el-coronavirus-ha-estancado-la-tecnologia-pero-no-tenemos-ya-suficiente/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "6:32",
                      "publishedAt": "2020-03-26T02:50:27+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_367"
                  },
                  {
                      "slug": "apple-en-tiempos-de-virus",
                      "guid": "https://tupodcast.com/?p=1528",
                      "title": "Apple en tiempos de virus",
                      "summary": "Bienvenidos al Episodio 63 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com Apple lanza nuevos productos en […]",
                      "enclosure": "https://archive.org/download/apple_virus/apple_virus.mp3",
                      "link": "https://tupodcast.com/apple-en-tiempos-de-virus/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "11:34",
                      "publishedAt": "2020-03-20T02:18:03+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_368"
                  },
                  {
                      "slug": "proceso-de-reclamacion-de-garantia-del-pixel-2-xl",
                      "guid": "https://tupodcast.com/?p=1395",
                      "title": "Proceso de reclamación de garantía del Pixel 2 XL",
                      "summary": "Bienvenidos al Episodio 62 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com Les comento cual fue mi […]",
                      "enclosure": "https://archive.org/download/pixel_garantia/pixel_garantia.mp3",
                      "link": "https://tupodcast.com/proceso-de-reclamacion-de-garantia-del-pixel-2-xl/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "7:03",
                      "publishedAt": "2020-03-13T22:20:02+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_369"
                  },
                  {
                      "slug": "quiero-vender-mi-pc-y-pasar-a-mac",
                      "guid": "https://tupodcast.com/?p=1393",
                      "title": "Quiero vender mi PC y pasar a Mac",
                      "summary": "Bienvenidos al Episodio 61 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com Quiero vender mi ordenador y […]",
                      "enclosure": "https://archive.org/download/pc_vs_apple/pc_vs_apple.mp3",
                      "link": "https://tupodcast.com/quiero-vender-mi-pc-y-pasar-a-mac/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "20:50",
                      "publishedAt": "2020-03-10T19:22:51+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_370"
                  },
                  {
                      "slug": "devolvi-el-rode-videomicpro-y-el-dji-osmo-mobile-3",
                      "guid": "https://tupodcast.com/?p=1359",
                      "title": "Devolví el Rode VideomicPro y el DJI Osmo Mobile 3",
                      "summary": "Bienvenidos al Episodio 60 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com Hoy les comento sobre la […]",
                      "enclosure": "https://archive.org/download/videomicpro_osmo/videomicpro_osmo.mp3",
                      "link": "https://tupodcast.com/devolvi-el-rode-videomicpro-y-el-dji-osmo-mobile-3/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "16:56",
                      "publishedAt": "2020-02-22T18:49:07+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_371"
                  },
                  {
                      "slug": "mi-band-4",
                      "guid": "https://tupodcast.com/?p=1354",
                      "title": "Mi Band 4",
                      "summary": "Bienvenidos al Episodio 59 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com En este episodio les comento […]",
                      "enclosure": "https://archive.org/download/miband4/miband4.mp3",
                      "link": "https://tupodcast.com/mi-band-4/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "8:52",
                      "publishedAt": "2020-02-11T20:33:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_372"
                  },
                  {
                      "slug": "primeras-impresiones-del-pixel-3a",
                      "guid": "https://tupodcast.com/?p=1350",
                      "title": "Primeras impresiones del Pixel 3a",
                      "summary": "Bienvenidos al Episodio 58 de Podcast Inside, un podcast de Tecnología en la Red TuPodcast.com En este episodio les comento […]",
                      "enclosure": "https://archive.org/download/pixel3a/pixel3a.mp3",
                      "link": "https://tupodcast.com/primeras-impresiones-del-pixel-3a/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/podcastinside_itunes_new.jpg",
                      "itunesDuration": "12:32",
                      "publishedAt": "2020-02-08T05:26:44+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_373"
                  }
              ]
          }
      },
      {
          "title": "RadioAtenas",
          "url": "https://anchor.fm/s/22888188/podcast/rss",
          "subtitle": "Un espacio donde debatimos sobre el ecosistema de Apple.",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
          "link": "http://tecnocodeplus.com/",
          "author": "Albert",
          "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 8,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "7-configurar-gmail-en-la-app-nativa-de-ios",
                      "guid": "52f83f32-3144-42b6-ac3e-68f340f71378",
                      "title": "7. Configurar Gmail en la app nativa de iOS.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.     \nDespués de tanto tiempo probando y buscando, al fin consigo tener mi cuenta de Gmail gestionada desde la app nativa de correo. Para eso realice este episodio y así contarte de primera mano como logre tal objetivo, infórmanos que este problema solo está presente en los iPhone localizados en Cuba.\n                                                               Sígueme en twitter: https://twitter.com/Albert_Pod",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14776807/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-5%2F79732331-44100-2-4f847050b8978.m4a",
                      "link": "https://anchor.fm/radioatenas/episodes/7--Configurar-Gmail-en-la-app-nativa-de-iOS-ef1f17",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "352",
                      "publishedAt": "2020-06-23T15:00:22+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1002"
                  },
                  {
                      "slug": "6-solucion-y-recomendacion-de-un-vpn",
                      "guid": "c88fab6e-b109-4a1c-806d-6448887da8e6",
                      "title": "6. Solución y recomendación de un VPN.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.   \nEn este episodio te cuento mis ultimas experiencias usando los VPN, en este caso me refiero a ProtonVPN, además de recomendártelo como uno de los más completos es el que uso en mi día a día.\n                                                                Sígueme en twitter: https://twitter.com/Albert_Pod",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14776631/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-5%2F79730501-44100-2-bbacb45fb5b19.m4a",
                      "link": "https://anchor.fm/radioatenas/episodes/6--Solucin-y-recomendacin-de-un-VPN-ef1ern",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "389",
                      "publishedAt": "2020-06-19T15:00:17+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_963"
                  },
                  {
                      "slug": "5-apple-presenta-ios-13-5-5-beta-1",
                      "guid": "91afba3c-1071-4230-8e85-ddc1d76a35e1",
                      "title": "5. Apple presenta iOS 13.5.5 beta 1.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.   \n\nApple lanzó las versiones oficiales de iOS y iPadOS 13.5.1 y watchOS 6.2.6 para todos. Pero también liberó la primera beta de iOS 13.5.5, que, parecía que no traía nada nuevo, pero se han encontrado indicios sobre el futuro del servicio de noticias de pago de Apple, Apple News+. Y es que tal y como nos informan desde MacRumors, habrá soporte para audio y así poder escuchar las noticias en formato podcast.\n\nTal y como se ha encontrado en el código de la primera beta de iOS 13.5.5, Apple News+ ofrecerá a los suscriptores una nueva forma de enterarse de las noticias más importantes: en formato podcast. De esta manera, los usuarios podrán estar al tanto de todo de una forma más rápida.\n\n¿Cómo será esta nueva función de Apple News+? Desde 9to5mac han encontrado unas capturas de pantalla donde se nos muestra la interfaz; será lo mismo pero con un botón rojo para darle al play en la esquina superior derecha que al presionarlo, se podrán escuchar las noticias más importantes que la app haya seleccionado para cada usuario.\n\nApple se subió al carro de los servicios por suscripción a lo grande con el lanzamiento de su servicio de series y películas; Apple TV+, de juegos; Apple Arcade y de noticias; Apple News+. Dado que si a esos les añadimos Apple Music, estar suscrito a todo saldría por un buen pico al mes y se especuló con la posibilidad de que se hiciera un bundle con todos esos servicios para que pagando un sólo precio, se pudiese tener acceso a todos. Eso sólo fueron rumores y quedó en el olvido pero vuelven dado que en el código fuente de la primera beta de iOS 13.5.5 se han encontrado evidencias nunca vistas de que la compañía trabaja en un supuesto pack donde entrarían varios de sus servicios.                                                \nTal y como nos indican desde el medio 9to5mac que son los que se han encontrado con estos indicios en el código fuente de la primera beta de iOS 13.5.5, hay unos archivos nuevos que no estaban en otras versiones que hacen referencia a “bundle offer” y “bundle suscription”. Estos nuevos códigos que parece que hacen referencia al App Store, estarían relacionados con el sistema de gestión de las suscripciones de Apple. Esto es lo que hace pensar que se está trabajando en un pack que integre varios de los servicios.\n\nUn ejemplo podría ser Apple Music, Apple TV+ y almacenamiento de iCloud (y Apple News+ en los países en los que esté disponible) a un precio más competitivo y económico en comparación a pagarlos por separado. Veremos a ver si esto llega a buen puerto o no, pero en Cupertino trabajan en ello. La WWDC 2020 sería un gran momento para llevar a cabo algún tipo de anuncio sobre el tema. Veremos a ver lo qué pasa.\n\n\nSígueme en twitter: https://twitter.com/Albert_Pod",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14776075/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-5%2F79728108-44100-2-ffb77aaaee503.m4a",
                      "link": "https://anchor.fm/radioatenas/episodes/5--Apple-presenta-iOS-13-5-5-beta-1-ef1eab",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "330",
                      "publishedAt": "2020-06-15T15:00:52+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_936"
                  },
                  {
                      "slug": "4-como-compartir-tu-ubicacion-con-un-clic",
                      "guid": "b9913013-0058-48ac-9b82-1d3fb09a798d",
                      "title": "4. Como compartir tu ubicación con un clic.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.     \nHoy te traemos una breve explicación, de cómo a través de iMessage puedes compartir tu ubicación en tiempo real, con amigos y familiares, los pasos son sencillos y fáciles, con solo ir al apartado de mensajes y seleccionar el contacto o grupo, escribes en la barra del texto “Estoy en”, acto seguido te saldrá encima del teclado virtual tu ubicación real, solo te faltaría tocarla y darle enviar, viste que fácil, así es Apple de minimalista y productiva, por eso muchas personas cada día se pasan para este ecosistema.                                     Y hasta aquí los tips del día de hoy, te esperamos en un próximo encuentro, aquí en RadioAtenas, un espacio para aprender sobre Apple y sus funciones ocultas.\nSígueme en twitter: https://twitter.com/flyWarriors81",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14362672/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-27%2F77110749-44100-2-a6346521b2f15.mp3",
                      "link": "https://anchor.fm/radioatenas/episodes/4--Como-compartir-tu-ubicacin-con-un-clic-eekqjg",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "312",
                      "publishedAt": "2020-06-05T15:00:54+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_297"
                  },
                  {
                      "slug": "3-como-crear-tus-grupos-en-imessage",
                      "guid": "f14b6016-4796-47f9-8b96-0c1f97481994",
                      "title": "3. Cómo crear tus grupos en iMessage.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.     \nEn esta entrega de RadioAtenas te voy a brindar un episodio sencillo pero instructivo, voy a enseñarte cómo crear grupos en iMessage desde tu iPhone o cualquier dispositivo del ecosistema de Apple, ya sea tu iPad, tu MacBook. iMessage y la aplicación de mensajes de Apple hace tiempo están como que olvidadas por los de Cupertino, esperemos que en iOS 14 lleguen novedades ha esta genial función de mensajería.\nSígueme en twitter: https://twitter.com/flyWarriors81",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14362455/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-27%2F77110729-44100-2-9b6efff89b5ae.mp3",
                      "link": "https://anchor.fm/radioatenas/episodes/3--Cmo-crear-tus-grupos-en-iMessage-eekqcn",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "417",
                      "publishedAt": "2020-06-02T15:00:03+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_298"
                  },
                  {
                      "slug": "2-que-hacer-si-tu-dispositivo-movil-se-moja",
                      "guid": "796c3902-44f3-42f6-95a2-1e375f71d44f",
                      "title": "2. Que hacer si tu dispositivo móvil se moja.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.     \nEn este episodio me dediqué antes ha hacer un trabajo de investigación, recorrí un total de 15 talleres de reparaciones de dispositivos móviles, después de haber conversado con más de 20 especialistas y técnicos en reparaciones, llego al taller de Ctrl Alt Cell, conversando con su técnico principal Denis Flores, quien me dio una amplia explicación sobre el tema, queda definido que lo menos recomendable cuando un dispositivo se moja es meterlo en arroz, esta teoría quedó demostrada que no resulta, lo más aconsejable es, apagar el dispositivo manual o automáticamente, llevarlo a tu taller más cercano. Concluyendo vemos que esas falsas costumbres y acciones no resuelven nada.                          Nos vemos en un próximo episodio de RadioAtenas estimados oyentes.\nSígueme en twitter: https://twitter.com/flyWarriors81",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14362193/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-27%2F77110571-44100-2-1201b36ef830e.mp3",
                      "link": "https://anchor.fm/radioatenas/episodes/2--Que-hacer-si-tu-dispositivo-mvil-se-moja-eekq4h",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "387",
                      "publishedAt": "2020-05-29T15:00:50+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_299"
                  },
                  {
                      "slug": "1-como-descargar-apps-en-ios-por-datos-moviles",
                      "guid": "e005fa74-5649-4bc6-9df8-5bf7782894c4",
                      "title": "1. Como descargar apps en (iOS) por datos móviles.",
                      "summary": "Un espacio donde debatimos sobre el ecosistema de Apple.                                    En este episodio te muestro como descargar aplicaciones en iOS por datos móviles en Cuba. Para nadie es un secreto que el cubano en cuanto ha dispositivos de Apple tiene muchas limitaciones, una de ellas es usar la App Store en cualquiera de sus dispositivos y sistemas operativos independientes, pues aquí ya te muestro la solución para iOS, también está disponible para iPadOS.                                                                 Síguenos en: twitter                                         https://twitter.com/flyWarriors81",
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14260789/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-25%2F76463224-44100-2-e9a6cef48c987.m4a",
                      "link": "https://anchor.fm/radioatenas/episodes/1--Como-descargar-apps-en-iOS-por-datos-mviles-eehn3l",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "547",
                      "publishedAt": "2020-05-25T13:14:47+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_300"
                  },
                  {
                      "slug": "radioatenas-podcast-trailer",
                      "guid": "13d1997b-2b7f-4c9e-a677-2e7eb05125b5",
                      "title": "RadioAtenas Podcast (Trailer)",
                      "summary": null,
                      "enclosure": "https://anchor.fm/s/22888188/podcast/play/14070556/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-4-21%2F75262181-44100-2-8d8be69781f36.m4a",
                      "link": "https://anchor.fm/radioatenas/episodes/ep-eebtas",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/5693714/5693714-1590045460583-5ae2ad606d7f9.jpg",
                      "itunesDuration": "37",
                      "publishedAt": "2020-05-21T07:24:09+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_301"
                  }
              ]
          }
      },
      {
          "title": "SystemInside Podcast",
          "url": "https://tupodcast.com/feed/systeminside",
          "subtitle": "Nuestro idioma es la Tecnología",
          "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
          "link": "https://tupodcast.com",
          "author": "elavdeveloper@gmail.com (TuPodcast)",
          "summary": "SystemInside Podcast es el espacio donde les traigo en audio, los videos que publico en mi canal de Youtube de Tecnología.",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 78,
          "episodes": {
              "page": 1,
              "pages": 8,
              "objects": [
                  {
                      "slug": "mi-nuevo-teclado-satechi-slim-x1w1",
                      "guid": "https://tupodcast.com/?p=2374",
                      "title": "Mi nuevo teclado: Satechi Slim X1/W1",
                      "summary": "Bienvenidos a un nuevo episodio (79) en SystemInside. Primero que todo pido disculpas por la calidad del audio, lo grabé […]",
                      "enclosure": "https://archive.org/download/systeminside79/systeminside79.mp3",
                      "link": "https://tupodcast.com/mi-nuevo-teclado-satechi-slim-x1-w1/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "7:45",
                      "publishedAt": "2021-01-23T06:22:16+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_13409"
                  },
                  {
                      "slug": "libertad-de-expresion-en-tiempos-de-redes-sociales",
                      "guid": "https://tupodcast.com/?p=2366",
                      "title": "Libertad de Expresión en tiempos de Redes Sociales",
                      "summary": "Bienvenidos a un nuevo episodio (78) en SystemInside. Vivimos en tiempos de redes sociales y hacemos uso de nuestra Libertad […]",
                      "enclosure": "https://archive.org/download/libertadexpresion/libertadexpresion.mp3",
                      "link": "https://tupodcast.com/libertad-de-expresion-en-tiempos-de-redes-sociales/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "19:45",
                      "publishedAt": "2021-01-16T07:25:02+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3202"
                  },
                  {
                      "slug": "probando-stadia-mis-primeras-impresiones",
                      "guid": "https://tupodcast.com/?p=2286",
                      "title": "Probando Stadia: mis primeras impresiones",
                      "summary": "Bienvenidos a un nuevo episodio en SystemInside. Aprovechando la oportunidad de usar 3 meses Stadia en modo Pro, he decidido […]",
                      "enclosure": "https://archive.org/download/probandostadia/probandostadia.mp3",
                      "link": "https://tupodcast.com/probando-stadia-mis-primeras-impresiones/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "10:17",
                      "publishedAt": "2020-12-13T07:33:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2835"
                  },
                  {
                      "slug": "24h24l-un-evento-sobre-gnulinux",
                      "guid": "https://tupodcast.com/?p=2279",
                      "title": "24H24L Un evento sobre GNU/Linux",
                      "summary": "Bienvenidos a un nuevo episodio en SystemInside. Este Sábado 12 de Diciembre comenzará el evento 24H24L un evento sobre GNU/Linux. […]",
                      "enclosure": "https://archive.org/download/24-h-24-l/24H24L.mp3",
                      "link": "https://tupodcast.com/24h24l-un-evento-sobre-gnu-linux/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "2:18",
                      "publishedAt": "2020-12-11T06:31:49+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2816"
                  },
                  {
                      "slug": "maldito-efecto-osborne",
                      "guid": "https://tupodcast.com/?p=2246",
                      "title": "Maldito efecto Osborne",
                      "summary": "Bienvenidos a un nuevo video en SystemInside. El efecto Osborne es un fenómeno social en el que simplemente las personas […]",
                      "enclosure": "https://archive.org/download/efectoosborne/efectoosborne.mp3",
                      "link": "https://tupodcast.com/maldito-efecto-osborne/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "10:43",
                      "publishedAt": "2020-11-24T08:10:49+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2607"
                  },
                  {
                      "slug": "cual-sistema-operativo-demora-mas-en-instalar",
                      "guid": "https://tupodcast.com/?p=2230",
                      "title": "¿Cual sistema operativo demora más en instalar?",
                      "summary": "Bienvenidos a un nuevo video en SystemInside. Normalmente el sistema operativo que más palos se lleva a la hora de […]",
                      "enclosure": "https://archive.org/download/somaslento/somaslento.mp3",
                      "link": "https://tupodcast.com/cual-sistema-operativo-demora-mas-en-instalar/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "10:31",
                      "publishedAt": "2020-11-14T06:15:55+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2548"
                  },
                  {
                      "slug": "apple-silicon-m1-mi-opinion-sobre-el-evento-y-los-productos",
                      "guid": "https://tupodcast.com/?p=2228",
                      "title": "Apple Silicon M1: mi opinión sobre el evento y los productos",
                      "summary": "Bienvenidos a un nuevo video en SystemInside. Han pasado varios días desde el Apple Event donde presentaron su nuevo SOC, […]",
                      "enclosure": "https://archive.org/download/applesiliconevent/applesiliconevent.mp3",
                      "link": "https://tupodcast.com/apple-silicon-m1-mi-opinion-sobre-el-evento-y-los-productos/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "19:47",
                      "publishedAt": "2020-11-13T20:50:27+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2538"
                  },
                  {
                      "slug": "se-restablecera-la-neutralidad-de-la-red-en-estados-unidos",
                      "guid": "https://tupodcast.com/?p=2219",
                      "title": "¿Se restablecerá la Neutralidad de la Red en Estados Unidos?",
                      "summary": "Joe Biden ha sido electo como el Presidente #46 de los Estados Unidos, y esto podría significar que podría retomar […]",
                      "enclosure": "https://archive.org/download/neutralidad_red/neutralidad_red.mp3",
                      "link": "https://tupodcast.com/se-restablecera-la-neutralidad-de-la-red-en-estados-unidos/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "5:56",
                      "publishedAt": "2020-11-08T06:31:31+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2508"
                  },
                  {
                      "slug": "lo-que-hago-para-cuidar-la-salud-de-la-bateria-de-litio-mi-smartphone-iphone",
                      "guid": "https://tupodcast.com/?p=2152",
                      "title": "Lo que hago para cuidar la salud de la batería de litio mi Smartphone (iPhone)",
                      "summary": "Bienvenidos a un nuevo video en SystemInside. En este video les digo que es lo que hago para que, un […]",
                      "enclosure": "https://archive.org/download/bateria_iphone/bateria_iphone.mp3",
                      "link": "https://tupodcast.com/lo-que-hago-para-cuidar-la-salud-de-la-bateria-de-litio-mi-smartphone-iphone/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "10:09",
                      "publishedAt": "2020-11-03T04:59:59+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2452"
                  },
                  {
                      "slug": "el-trato-al-cliente-la-seguridad-en-android-y-la-experiencia-en-un-movil-de-300-dolares",
                      "guid": "https://tupodcast.com/?p=2147",
                      "title": "El trato al cliente, la seguridad en Android y la experiencia en un móvil de 300 dólares",
                      "summary": "Bienvenidos a un nuevo video en SystemInside. En este video vengo a reflexionar sobre algunos temas de unos Podcasts que […]",
                      "enclosure": "https://archive.org/download/soporte_android/soporte_android.mp3",
                      "link": "https://tupodcast.com/el-trato-al-cliente-la-seguridad-en-android-y-la-experiencia-en-un-movil-de-300-dolares/",
                      "image": "https://tupodcast.com/cdn_tupodcast/img/systeminsde_itunes_new.jpg",
                      "itunesDuration": "14:11",
                      "publishedAt": "2020-11-01T05:47:14+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2408"
                  }
              ]
          }
      },
      {
          "title": "Tech Junkies",
          "url": "https://anchor.fm/s/18e217c0/podcast/rss",
          "subtitle": "Tech_Junkies, es un espacio donde se unen la cultura de varios países, para mostrarte una herramienta más sobre Tecnología y Cultura Geek",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
          "link": "https://techjunkiesinfo.wordpress.com/",
          "author": "Albert",
          "summary": "Tech_Junkies, es un espacio donde se unen la cultura de varios países, para mostrarte una herramienta más sobre Tecnología y Cultura Geek",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 20,
          "episodes": {
              "page": 1,
              "pages": 2,
              "objects": [
                  {
                      "slug": "19-los-secretos-que-esconde-la-invitacion-de-apple",
                      "guid": "46d83185-4278-4e44-9234-71cfb4719c67",
                      "title": "19. Los secretos que esconde la invitación de Apple",
                      "summary": "Tech Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nEnlace a los sorteos activos:\n\nhttps://bit.ly/30RWEoW \nhttps://twitter.com/peperamx?s=21 \n\nPuedes seguirnos en: https://twitter.com/TechJunkies\n\nEncuéntranos en nuestra comunidad en telegram: https://t.me/techjunkies_podcasts\n\n¡Gracias por apoyarnos y escucharnos!\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/20888541/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-9-10%2F116928303-44100-2-515fd1a95103d.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/19--Los-secretos-que-esconde-la-invitacion-de-Apple-ekrvgt",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "2591",
                      "publishedAt": "2020-10-10T13:05:15+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2253"
                  },
                  {
                      "slug": "18-resumen-y-valoracion-del-evento-de-apple",
                      "guid": "7195b771-6523-4052-8727-740afb0f004e",
                      "title": "18. Resumen y valoración del evento de Apple",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\n1-) APPLE PRESENTA SU NUEVO APPLE WATCH SERIE 6 CON LAS SIGUIENTES NOVEDADES:\n\n• NUEVOS COLORES EN AZUL Y UN PRODUCT (Red)\n\n• WATCHOS 7 LLEGA CON NUEVAS FUNCIONES ENTRE LAS QUE DESTACAN: LAVADO DE MANOS, MEDICIÓN DE OXÍGENO EN SANGRE GRACIAS A UN NUEVO SENSOR INFLARROJO QUE SE ENCARGARÁ DE REALIZAR ESTA FUNCIÓN, MEDICIÓN Y CONTROL DEL SUEÑO, ENTRE OTRAS MÁS \n\n• NUEVO PROCESADOR S6 EL CUAL HARÁ QUE LA BATERÍA MEJORE MUCHO MÁS EN SU RENDIMIENTO \n\n• SE INCORPORÓ UN ALTÍMETRO DENTRO DE LAS NUEVAS FUNCIONES, LO CUAL SERA MUY IMPORTANTE PARA TUS ENTRENAMIENTOS Y CAMINATAS \n\n• LAS PRE-RESERVAS COMIENZAN HOY, SALIENDO YA A LA VENTA EL PRÓXIMO VIERNES \n\n2-) SE PRESENTAN NUEVAS CORREAS PARA EL RELOJ INCLUYENDO UN NUEVO DISEÑO:\n\n• LA NUEVA CORREA SE LLAMA \"SOLO LOOP” ESTÁ CORREA EN ESPECÍFICO NO TRAERA UN CIERRE, VIENE EN DIFERENTES TAMAÑOS Y SERA MUY IMPORTANTE PARA HACER DEPORTES \n\n• LLEGAN NUEVAS ESFERAS A WATCHOS \n\n\n3-) APPLE PRESENTA UN APPLE WATCH SE (VERSION ECONOMÍA)\n\n• ESTA VERSIÓN SERA UN SERIE 4 MEJORADO FIJANDO SU PRECIO EN LOS 279$ \n\n\n4-) APPLE PRESENTA NUEVO SERVICIO ORIENTADO PARA SU APPLE WATCH \"APPLE FITNESS+”\n\n• INCLUYE SERVICIO DE ENTRENAMIENTO  GUIADOS CON HASTA 10 MODALIDADES DE ENTRENAMIENTO DISTINTAS \n\n• EL NUEVO SERVICIO REÚNE DEPORTE COMO YOGA, PESAS, CORRER O ANDAR EN CINTA ENTRE OTROS \n\n• CONTARÁ CON UN PRECIO DE 9.99$ MENSUAl, LEGANDO HASTA LOS 79.99$ ANUAL\n\n• COMPATIBLE CON \"EN FAMILIA” DE HASTA 5 INTEGRANTES\n\n• ESTARA DISPONIBLE  A FINALES DE AÑO PARA LOS SIGUIENTES PAÍSES: AUSTRALIA, REINO UNIDO, CANADA e IRLANDA\n\n• PARA LOS COMPRADORES DEL NUEVO MODELO DEL APPLE WATCH RECIBIRÁN 3 MESES GRATIS DE ESTE SERVICIO \n\n\n5-) APPLE LANZA NUEVO SERVICIO \"APPLE ONE” DONDE PODRAS UNIFICAR TODAS TUS SUSCRIPCIÓNES EN UN SOLO PAGO\n\n• Individual: 14,95 dólares (Apple Music, Apple TV+, Apple Arcade, y 50GB de iCloud)\n\n• Familiar: Por 19,95 dólares (Apple Music, Apple TV+, Apple Arcade, y 500GB de iCloud\n\n• Premier: Por 24,95 dólares (Apple Music, Apple TV+, Apple Arcade, News+, Fitness+, y 2TB de iCloud)\n\n\n6-) Apple lanza un nuevo iPad Air con diseño de iPad Pro \n\n-El nuevo iPad Air incorpora el diseño del iPad Pro, y tiene una increíble pantalla Liquid Retina 3.8 millones de píxeles que sacarán todo el partido a nuestras fotografías, el nuevo iPad Air incorpora el nuevo botón de inicio con Touch ID. El nuevo iPad Air incorpora el procesador A14 de 5nm que incorpora todas las novedades de machine learning que veíamos en el modelo Pro, y el nuevo conector USB-C, también es compatible con el Magic Keyboard. El nuevo iPad Air se lanza además en una nueva gama de colores (verde, azul, rosa, gris…), y se lanzará en octubre por 599 dólares.\n\n¡Gracias por apoyarnos y escucharnos!\n\n\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\n\nEncuéntranos en nuestra comunidad en telegram: https://t.me/techjunkies_podcasts\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/19849523/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-8-19%2F109165958-44100-2-8dbd44ca24ade.m4a",
                      "link": "https://anchor.fm/tech-junkies/episodes/18--Resumen-y-valoracion-del-evento-de-Apple-ejs8rj",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "3067",
                      "publishedAt": "2020-09-19T12:39:27+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2032"
                  },
                  {
                      "slug": "17-appleevent-mark-gurman-1-jon-prosser-0",
                      "guid": "65ec4bf8-8dd5-48c9-9a6d-b2b23a488602",
                      "title": "17. #AppleEvent Mark Gurman 1 - Jon Prosser 0",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\nApple le propina estocada fatal a @jon_prosser mostrándole el porqué es la reina en marketing para las ventas de dispositivos, como ya comentamos, en este episodio compartimos criterios sobre el venidero 15 de septiembre donde Apple realizar su próxima Keynote2020.\n¡Gracias por apoyarnos y escucharnos!\nPuedes seguirnos en : https://twitter.com/TechJunkies\nRodrigo https://mobile.twitter.com/RodrigoMont26\nPepe https://twitter.com/PepeRamirezMx\nJuan https://twitter.com/juandacort10\nAlbert https://twitter.com/Albert_Pod\nDan  https://twitter.com/luvgadget \nEncuéntranos en nuestra comunidad en telegram: https://t.me/techjunkies_podcasts\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/19529839/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-8-13%2F106956498-44100-2-7f9eb7e632bc.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/17--AppleEvent-Mark-Gurman-1---Jon-Prosser-0-ejiglf",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "2643",
                      "publishedAt": "2020-09-13T14:34:31+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1975"
                  },
                  {
                      "slug": "16-setup-en-ios-14-dos-meses-despues",
                      "guid": "06244cde-5425-449e-90ff-941eb430addb",
                      "title": "16. SETUP en iOS 14 dos meses después",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nQué tal Junkies de Apple, en este episodio compartimos nuestro SETUP en iOS 14. Así como nuestra opinión usando esta versión en fase beta dos meses después de su lanzamiento oficial. Nos vemos en un proximo capítulo, larga vida al \"Podcasting”.\n\n¡Gracias por apoyarnos y escucharnos!\n\nCanal de YouTube recomendado: https://www.youtube.com/c/PrudenGeek\n\nAplicación para hacer los Screenshot: https://apps.apple.com/mx/app/screen-mockup/id1445629827?l=en\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: https://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/18760518/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-7-29%2F102566545-44100-2-31ea077cf2741.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/16--SETUP-en-iOS-14-dos-meses-despus-eir1c6",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "3166",
                      "publishedAt": "2020-08-29T12:33:36+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1841"
                  },
                  {
                      "slug": "15-aprende-a-tener-el-100-de-vida-en-la-bateria-de-tu-iphone",
                      "guid": "65c2ce83-924c-402c-8c82-4659a94f020b",
                      "title": "15. Aprende a tener el 100% de vida en la bateria de tu iPhone",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nQué tal Junkies de Apple, en este episodio compartimos con ustedes de que forma gestionamos nuestros ciclos de carga y como hacemos para mantener el 100% de vida en la batería de tu iPhone. Esperamos que te sea interesante y a su vez, apropiado para una mejor gestión de la batería.\nNos vemos en un proximo capítulo, larga vida al \"Podcasting”.\n\n¡Gracias por apoyarnos y escucharnos!\n\nVideo recomendado: https://youtu.be/cCuG-3ebvQI\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: https://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/18274410/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-7-19%2F99747832-44100-2-0a56a6ff9e6af.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/15--Aprende-a-tener-el-100-de-vida-en-la-bateria-de-tu-iPhone-eic6la",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "2322",
                      "publishedAt": "2020-08-19T15:20:50+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1762"
                  },
                  {
                      "slug": "14-como-se-crean-las-automatizaciones-desde-ifttt",
                      "guid": "0e75182a-ce92-4341-932a-eac22ae7f191",
                      "title": "14. Como se crean las automatizaciones desde #IFTTT",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nEn este episodio intentamos explicar con varios tips como sacarle más provecho a las automatizaciones en IFTTT, además repasamos sobre una nueva app que encontramos en la App Store, la cual es la combinación perfecta para sustituir las ya conocidas Hootsuite y Buffer. Esta genial aplicación es Apphi, el enlace está disponible para su descarga en los créditos.\n\n¡Gracias por apoyarnos y escucharnos!\n\nApp recomendada: https://apps.apple.com/us/app/apphi-programaci%C3%B3n-publicar/id1251406049?l=es\n\nNuevo podcast de Juandacort: https://t.co/5Qr3aiO3ow\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: \nhttps://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/17586826/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-7-5%2F95866015-44100-2-a4722d833d3bc.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/14--Como-se-crean-las-automatizaciones-desde-IFTTT-ehn76a",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "3100",
                      "publishedAt": "2020-08-05T13:14:14+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1419"
                  },
                  {
                      "slug": "13-novedades-en-watchos-7-0-a-fondo",
                      "guid": "9b282ed9-ebc3-4971-a1ce-70eb85dcb821",
                      "title": "13. Novedades en WatchOS 7.0 a fondo",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\nEn este episodio te comentamos las novedades que hasta este momento han llegado en WatchOS 7.0, también debatimos sobre un posible diseño redondo para los Apple Watch, del cual se rumoreó un tiempo y a día de hoy vuelve a tomar protagonismo dentro de la actualidad del mundo noticioso \nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: \nhttps://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/16883408/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-6-21%2F91909918-44100-2-f3577d626cdcc.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/13--Novedades-en-WatchOS-7-0-a-fondo-eh1o8g",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "2657",
                      "publishedAt": "2020-07-21T13:17:30+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1187"
                  },
                  {
                      "slug": "12-macos-big-sur-11-estas-son-todas-sus-novedades",
                      "guid": "6bbea0e3-7bda-4226-98ed-512deff00094",
                      "title": "12. MacOs Big Sur 11 estas son todas sus novedades.",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nYa está entre nosotros la beta 2 de MacOs Big Sur 11, sistema operativo con el cual podemos gestionar nuestras MacBook. Quizás para sorpresa de muchos al igual que para este redactor, increíblemente en esta segunda entrega no encontramos alguna novedad que señalar. Todo lo contrario a cuando el pasado 22 de Junio vimos en la primera versión beta de este software.\n\nAunque dejemos en claro algunos punto que deben ser de tu conocimiento, MacOS Big Sur agregó una interfaz nueva, la cual adquirió un rediseño completo incluyendo aplicaciones que tiempo atrás ya estaban implementadas tanto en iOS, como iPadOS. Ejemplo de ello lo encontramos en la nueva app de mensajes para MacOS.\n\nComo le mencionamos estamos ahora mismo sin novedades nuevas, aunque es de saber que en cuanto a mejoras en fluidez y estabilidad si debemos estar presentes. Por el momento solo nos resta ver si con el paso de los días los desarrolladores descubren algo en los códigos de la version, así de esta forma podríamos definir en qué pasó se encuentra Big Sur 11 beta 2. \n\n¿Sera que veremos alguna sorpresa en esta beta 2? Hazte esa pregunta y comentarios déjanos saber que ideas tienes, sería bueno para entablar debate junto a ustedes. Por ahora nos despedimos, claro esta, en caso de aparecer algo repentinamente lo compartiremos con todos ustedes.\n\n\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: \nhttps://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/16312066/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-6-9%2F88697843-44100-2-6a1c5eac3e3a7.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/12--MacOs-Big-Sur-11-estas-son-todas-sus-novedades-eggaa2",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "2187",
                      "publishedAt": "2020-07-09T01:41:33+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1133"
                  },
                  {
                      "slug": "11-novedades-y-bugs-en-ios-14-beta-1",
                      "guid": "e9ceca19-254e-4e46-83be-bfdbfbf5a11f",
                      "title": "11. Novedades y bugs en iOS 14 beta 1.",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\nHola qué tal estimados oyentes, hoy le entregamos un nuevo episodio de \n\nTech_Junkies. Donde por supuesto debatimos sobre iOS 14 beta 1, repasamos algunas de sus novedades mas jugosas y nuestro colega Dan nos comenta el porqué tuvo que quitar la beta, dándonos una serie de cuestiones muy importantes, realmente arriesgarse a poner una beta de cualquier sistema operativo es algo loco, y, no es que nosotros los seamos, pero para hacerle este tipo de programas había que arriesgarse, aunque creo también que tenemos algo de locos, no crees. Cuando escuches el episodio verás de palabras textuales de cada uno como nos va, que no nos gusto, mejoras que quizás debería tener. \n\nEn fin para más ayuda te dejamos un enlace a esta Web, donde encontrar un artículo o varios de ellos, que de seguro te serán útiles, pues conocerás 50+ novedades de iOS 14 http://tecnocodeplus.com/ \n\nComo comentamos te dejamos el enlace del grupo en telegram, en el cual encontrarás una pequeña comunidad naciente que está inmensa en la prueba de las betas. Espero te sea de gran utilidad.\n\nFinalmente regresamos dentro de 10 días con otra entrega más de Tech_Junkies.\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: \nhttps://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/15970240/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-6-1%2F86782751-44100-2-60473faff81df.m4a",
                      "link": "https://anchor.fm/tech-junkies/episodes/11--Novedades-y-bugs-en-iOS-14-beta-1-eg5sg0",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "3585",
                      "publishedAt": "2020-07-01T17:00:22+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1087"
                  },
                  {
                      "slug": "10-resumen-de-la-wwdc2020-nos-acompano-tecnocodeplus",
                      "guid": "5ab04afb-86f6-434f-a3f7-5354d3e97dd0",
                      "title": "10. Resumen de la WWDC2020, nos acompaño @TecnoCodePlus.",
                      "summary": "Tech_Junkies, un espacio donde debatimos sobre Tecnología y cultura Geek.\n\nCon la keynote terminada, podemos decir sin temor a equivocarnos que es la WWDC más importante de los últimos años. Pero ya habrá tiempo de deleitarnos con los análisis y consecuencias, porque ahora es el momento de zambullirnos en las novedades de la WWDC 2020 recién presentadas. Apple nos ha dejado con un montón de cosas para analizar y las vamos a ver una a una.\n\nTodas las novedades de la WWDC 2020 de Apple\n\nCon iOS 14 llegan los widgets e iconos vivos a la home del iPhone. El sistema móvil de Apple viene cargado de mejoras y cambios, como la biblioteca de apps, los videos PiP, cambios en la interfaz de Siri y mucho más.\niPadOS 14 repite sistema operativo propio para el iPad, incorporando las mejoras de iOS 14 y otras más destacadas. Entre las más destacadas, nos encontramos con los cambios del Apple Pencil. Este accesorio permitirá hacer anotaciones más precisas y en más sitios, así como la selección de texto.\nwatchOS 7 también trae una buena dosisde novedades. La tan esperada monitorización del sueño es una de las más esperadas y que viene acompañadas de nuevas esferas y mejoras en Mapas.\nmacOS 11 Big Sur es sin duda el plato fuerte. Con su nuevo diseño, un Safari más desarrollado y la transición a procesadores de Apple. Todo lo que los desarrolladores necesitan para que sea lo más suave posible.\nSi tienes dudas sobre si tu Mac es compatible con macOS 11 Big Sur, estos son los modelos que podrán instalar la próxima gran actualización del sistema operativo de Apple.\ntvOS 14 trae mejoras interesantes como PiP y el reconocimiento de caras. La app Casa también hace su entrada en la plataforma.\nY luego ya comenzamos con las pequeñas cosas, como el cambio automático de fuente de sonido en los AirPods y la llegada del sonido espacial a los AirPods Pro.\nFundación, la tan esperada serie de ciencia ficción de Apple, por fin ha enseñado cómo se las gasta. Aquí tenemos un teaser que nos pone en situación de esta ambiciosa producción.\nPor supuesto, la nueva versión del sistema operativo del Mac supone un cambio tan grande que Apple ha modificado la nomenclatura. macOS 11 Big Sur así lo merece.\nApple ha puesto un kit de desarrollo para la transición hacia sus chips a disposición de los devs. Se trata de un Mac mini con procesador A12Z, el mismo que se encuentra en el iPad Pro 2020.\n\nPuedes seguirnos en : https://twitter.com/TechJunkies\n\nRodrigo https://mobile.twitter.com/RodrigoMont26\n\nPepe https://twitter.com/PepeRamirezMx\n\nJuan https://twitter.com/juandacort10\n\nAlbert https://twitter.com/Albert_Pod\n\nDan  https://twitter.com/luvgadget\n\n Encuéntranos en nuestra comunidad en telegram: \nhttps://t.me/techjunkies_podcasts\n\n\n--- \n\nSend in a voice message: https://anchor.fm/tech-junkies/message",
                      "enclosure": "https://anchor.fm/s/18e217c0/podcast/play/15599199/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-5-23%2F84660162-44100-2-3d1de5cd486cf.mp3",
                      "link": "https://anchor.fm/tech-junkies/episodes/10--Resumen-de-la-WWDC2020--nos-acompao-TecnoCodePlus-efqi4v",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4074704/4074704-1594263676519-3820c5f9aa76d.jpg",
                      "itunesDuration": "3391",
                      "publishedAt": "2020-06-23T15:11:40+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_1003"
                  }
              ]
          }
      },
      {
          "title": "TecnoCode+",
          "url": "https://anchor.fm/s/1032d060/podcast/rss",
          "subtitle": "Podcast oficial de TecnoCode+ donde debatimos sobre Tecnología y la cultura Geek en general. Support this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
          "link": "http://tecnocodeplus.com/",
          "author": "Albert",
          "summary": "Podcast oficial de TecnoCode+ donde debatimos sobre Tecnología y la cultura Geek en general. Support this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 140,
          "episodes": {
              "page": 1,
              "pages": 14,
              "objects": [
                  {
                      "slug": "156-nuevo-ios-144-todo-lo-que-debes-saber",
                      "guid": "7576b9ee-9f92-433d-ba9f-97c07ee0dfa6",
                      "title": "156. Nuevo iOS 14.4 ►TODO lo que Debes SABER",
                      "summary": "En la tarde de ayer Apple liberó para todos sus dispositivos compatibles la nueva versión iOS 14.4. Por tanto, en este episodio de hoy te contamos todas las mejoras y novedades que llegaron en esta nueva actualización para los iPhone.\n\nNos vemos o nos escuchamos la próxima semana...\n\nRedes sociales: \n\n🙋🏻‍♂️Twitter: [https://bit.ly/358DUDb]\n🎥Canal de YouTube: https://bit.ly/tecnocodeplus\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/25804186/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2021-0-27%2F149383066-44100-2-de35331e667cc.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/156--Nuevo-iOS-14-4-TODO-lo-que-Debes-SABER-ephvuq",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "235",
                      "publishedAt": "2021-01-27T15:39:45+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_15449"
                  },
                  {
                      "slug": "155-el-2021-apple-lanzara-varios-dispositivos-nunca-vistos",
                      "guid": "e7656b31-249b-4549-8904-f6710688aee8",
                      "title": "155. El 2021 Apple lanzará varios dispositivos nunca vistos",
                      "summary": "En el episodio del día de hoy repasamos los productos que no fueron finalmente lanzado en el pasado año 2020 y, los que si podrían llegar en este nuevo año. Además también analizamos las fecha de los posibles eventos, así como las recomendaciones de suscribirse a nuestro canal en YouTube.\n\nNos vemos o escuchamos la próxima semana...\n\nRedes sociales: \n\n🙋🏻‍♂️Twitter: https://bit.ly/30RWEoW \n🎥Canal de YouTube: https://bit.ly/tecnocodeplus \n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/25142546/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2021-0-13%2F145168492-44100-2-4655f446f4229.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/155--En-2021-Apple-lanzar-varios-dispositivos-nunca-vistos-eotpqi",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "1840",
                      "publishedAt": "2021-01-13T15:53:38+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3182"
                  },
                  {
                      "slug": "154-comenzamos-el-2021-sorteo-en-el-canal-de-youtube",
                      "guid": "167f761d-167e-4d4f-becf-98691ee21ee5",
                      "title": "154. Comenzamos el 2021 [SORTEO en el Canal de YOUTUBE]",
                      "summary": "Al fin terminamos este fatídico año 2020 y, como es costumbre TecnoCode+ se viste con sus mejores Galas para brindarte un video-podcast muy completo. En el caso de hoy te compartimos nuestras estrategias y metas para este 2021, año que esperemos sea mucho mejor que el ya recién terminado.\n\nRedes sociales:\n \n🙋🏻‍♂️Twitter: https://bit.ly/30RWEoW\n\n🎥Canal de YouTube: https://bit.ly/tecnocodeplus\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/24749435/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2021-0-4%2F142776758-44100-2-94b7ecd9b8939.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/154--Comenzamos-el-2021-SORTEO-en-el-Canal-de-YOUTUBE-eohptr",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "506",
                      "publishedAt": "2021-01-04T16:00:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_3007"
                  },
                  {
                      "slug": "153-la-despedida-nos-vamosnos-vemos",
                      "guid": "f858b6b4-651c-4ed0-abb6-a2a5bd0b2d0d",
                      "title": "153. La despedida ¿Nos vamos?...¡¡Nos vemos!!",
                      "summary": "¡Hola qué tal TecnoCoders! El 2020 ha sido un año excepcional, muchas cosas han pasado para bien o para mal y, aquí estamos todavía dando batalla. Pero tenemos mucha fe en Dios que el próximo 2021 nos dará paz y tranquilidad a esta humanidad que tanto lo necesita...en fin desde TecnoCode+ queremos enviarte nuestras más sinceras felicitaciones por este fin de año y un muy próspero nuevo año 2021 para ti y tus semejantes. ¡Nos vemos en enero!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23631829/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-11-7%2F135623240-44100-2-af1a69ea30828.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/153--La-despedida-Nos-vamos----Nos-vemos-enfmgl",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "2074",
                      "publishedAt": "2020-12-07T13:04:47+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2760"
                  },
                  {
                      "slug": "153-ha-sido-el-2020-un-gran-ano-para-apple",
                      "guid": "d5438938-a20e-4daf-87eb-447436698f33",
                      "title": "153. ¿Ha sido el 2020 un gran año para Apple?",
                      "summary": "Recuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\nEn este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\nSíguenos en:\nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23297030/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-10-30%2F133361363-44100-2-74f974c81522a.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/153--Ha-sido-el-2020-un-gran-ano-para-Apple-en5fi6",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "846",
                      "publishedAt": "2020-11-30T14:32:19+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2658"
                  },
                  {
                      "slug": "152-de-ser-hater-paso-a-ser-un-fanboy-hoy-con-gabriel-desde-culturatech1",
                      "guid": "c30449a4-f187-489d-9e95-66a59770e56b",
                      "title": "152. De ser «Hater» paso a ser un \"Fanboy”, hoy con Gabriel desde @CulturaTech1",
                      "summary": "¡Hola qué tal TecnoCoders! Como cada viernes llegamos una vez mediante nuestra «mini-Serie» “Conociendo a mi ídolo”. Esta vez tenemos como invitado al creador Gabriel Luna fundador de @CulturaTech, quien nos visita desde Ecuador.\n\nEnlace al podcast “Cultura Tech”: [https://bit.ly/cultura-tech-podcast]\n\n\nRecuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\n\nEn este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\n\nSíguenos en:\nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n\n\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23107364/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-10-25%2F132049377-44100-2-e04caa7fe6d0b.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/152--De-ser-Hater-paso-a-ser-un-Fanboy--hoy-con-Gabriel-desde-CulturaTech1-emvmb4",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "3398",
                      "publishedAt": "2020-11-27T06:00:00+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2630"
                  },
                  {
                      "slug": "151-dep-diego-10-cosas-que-detesto-en-ios-14",
                      "guid": "2a8f065a-d2e0-44df-83ad-3d21ebe53379",
                      "title": "151. D.E.P Diego \"10\" cosas que detestó en iOS 14",
                      "summary": "¡Hola qué tal TecnoCoders! iOS es un sistema operativo con el cual todo aquel usuario de un iPhone se siente a gusto, pero no todo siempre es o será color de rosas. Existen lagunas en las cuales Apple no quiere dar su brazo a torcer, es por eso que hoy te cuento esas 10 cosas que detestó en iOS 14.\n\n\n\nRecuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\n\n\nEn este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\n\n\nSíguenos en:\nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n\n\n\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23133739/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-10-26%2F132228183-44100-2-3c6d07797ac6b.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/151--D-E-P-Diego-10-cosas-que-detest-en-iOS-14-en0g3b",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "1349",
                      "publishedAt": "2020-11-26T14:24:15+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2621"
                  },
                  {
                      "slug": "150-los-iphone-6s-y-iphone-se-diran-adios-con-ios-15",
                      "guid": "e4575150-227a-4527-81c4-845292559e11",
                      "title": "150. Los iPhone 6S y iPhone SE dirán adiós con iOS 15",
                      "summary": "¡Hola qué tal TecnoCoders! Los iPhone 6s y iPhone SE original no tendrán soporte de iOS 15 el año que viene. Así lo afirma el sitio web israelí The Verifier (vía MacRumors) en un artículo publicado ayer. Los tres modelos basados en un procesador A9 se bajarían del tren de las actualizaciones seis años después de su debut original.\n\n\nRecuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\n\nEn este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\n\nSíguenos en:\nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n\n\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23107326/sponsor/a2mt7qt/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-25%2Fcf994a2f36ec348407c45d2439735019.m4a",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/150--Los-iPhone-6S-y-iPhone-SE-diran-adios-con-iOS-15-emvm9u",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "789",
                      "publishedAt": "2020-11-25T14:54:40+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2614"
                  },
                  {
                      "slug": "149-las-apps-mas-imprescindibles-que-uso-en-mi-iphone",
                      "guid": "134f7d77-c396-450e-ade5-9ebef25e704c",
                      "title": "149. Las apps más imprescindibles que uso en mi iPhone",
                      "summary": "¡Hola qué tal TecnoCoders! Restablecer un IPhone de fabrica significa configurar todo desde cero. Por eso hoy te muestro cuáles son esas apps imprescindibles en mi día a día.\n\n> ProCamera (fotografía)\n> Médium (blog)\n> Apphi (redes sociales)\n> Bitly (acortador de enlaces)\n> Reeder5 (lector de feed rss)\n> Ulysses (notas)\n> Todoist (gestor de tareas)\n> SMPRO (captura de pantalla)\n> InstaBio (enlace personalizado de contactos)\n> Office (suite de Microsoft)\n> Followers (analytics para twitter)\n> Discord (chat comunitario)\n> PicsArt (edición de fotos)\n\nEnlace personalizado para Todoist: [https://bit.ly/todoistAlbert81]\n\nEnlace al canal de paracaidismo en YouTube: [https://bit.ly/SkyJumperYoutube]\n\nRecuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\nEn este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\nSíguenos en:\nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/23054543/sponsor/a2mt7qt/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-11-24%2F428d39af8a0bb374a9eff1061f6da219.m4a",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/149--Las-apps-ms-imprescindibles-que-uso-en-mi-iPhone-emu2of",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "1724",
                      "publishedAt": "2020-11-24T13:46:07+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2604"
                  },
                  {
                      "slug": "148-fortnite-podria-regresar-a-apple-mediante-geforce-now",
                      "guid": "37965f2a-121f-4867-8b34-f6bef50adfda",
                      "title": "148. Fortnite podría regresar a Apple mediante GeForce Now",
                      "summary": "¡Hola qué tal TecnoCoders! NVIDIA ha lanzado hoy mismo su servicio de juegos en la nube, llamado GeForce NOW. Y lo hace estrenando la beta para iPhone y iPad a través de Safari, un método permitido por Apple que sortea los requisitos de la App Store. Con este nuevo servicio, los usuarios de iPhone y iPad podemos jugar a títulos de última generación sin necesidad de recurrir a un PC o una consola.\n\n-Recuerda que puedes apoyarnos usando el siguiente enlace: [https://anchor.fm/TecnoCodePlusPodcast/support]\ndesde el cual podrás realizar donaciones desde 0.99ctvos hasta 9.99$ (Dólares).\n\n-En este episodio contamos con la participación de:\n•Alberto Astiazarain \n•Yaisel Herrera\n\n-Síguenos en: \nTwitter: [https://bit.ly/2T2Tevv] \nTelegram: [https://t.me/tecnocodeplusCU] \nBlog en Médium: [https://bit.ly/2GFD20o]\nComunidad VIP: [https://bit.ly/2I60Rz8]\n\n¡Gracias por escucharnos y apoyarnos!\n\n--- \n\nSend in a voice message: https://anchor.fm/tecnocodepluspodcast/message\nSupport this podcast: <a href=\"https://anchor.fm/tecnocodepluspodcast/support\" rel=\"payment\">https://anchor.fm/tecnocodepluspodcast/support</a>",
                      "enclosure": "https://anchor.fm/s/1032d060/podcast/play/22871456/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-10-20%2F130456067-44100-2-c0b4eaf960503.mp3",
                      "link": "https://anchor.fm/tecnocodepluspodcast/episodes/148--Fortnite-podria-regresar-a-Apple-mediante-GeForce-Now-emofv0",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/2617656/2617656-1591252634697-6e367d3293d97.jpg",
                      "itunesDuration": "695",
                      "publishedAt": "2020-11-20T13:25:36+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_2581"
                  }
              ]
          }
      },
      {
          "title": "TecnoLike Plus",
          "url": "https://anchor.fm/s/1dc20d7c/podcast/rss",
          "subtitle": "Un Podcast Cubano donde hablaremos sobre las últimas noticias tecnológicas del Mundo Support this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
          "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
          "link": "https://anchor.fm/s/1dc20d7c/podcast/www.tecnolikeplus.com",
          "author": "TecnoLike Plus",
          "summary": "Un Podcast Cubano donde hablaremos sobre las últimas noticias tecnológicas del Mundo Support this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia",
              "description": "La actualidad de la innovación tecnológica",
              "img": "categories/technology.png",
              "color": "#33A8C7",
              "podcastsCount": 16
          },
          "episodesCount": 7,
          "episodes": {
              "page": 1,
              "pages": 1,
              "objects": [
                  {
                      "slug": "nuevas-ofertas-de-etecsa-novedades-del-iphone-12-y-de-la-ps5",
                      "guid": "f8952a1c-ec85-46bf-a461-71e1c378d72f",
                      "title": "Nuevas ofertas de ETECSA, novedades del iPhone 12 y de la PS5",
                      "summary": "<p>Descripción: Te contamos todo sobre las nuevas ofertas de ETECSA, los rumores del iPhone 12 y la PS5. También hacemos referencia a la familia de smartphone Redmi 10X y los nuevos procesadores de Exynos con los que Samsung espera hacer competencia a los Snapdragon.</p>\n\n--- \n\nThis episode is sponsored by \n· Anchor: The easiest way to make a podcast.  <a href=\"https://anchor.fm/app\">https://anchor.fm/app</a>\n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/14627143/sponsor/a203e3i/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-06-02%2F3f4608e858d89a91a74e7a6c29110618.m4a",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/Nuevas-ofertas-de-ETECSA--novedades-del-iPhone-12-y-de-la-PS5-eesss7",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "2587",
                      "publishedAt": "2020-06-02T05:25:45+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_689"
                  },
                  {
                      "slug": "novedades-de-la-4g-datos-cuba-y-de-la-mi-band-5-entre-otros-temas",
                      "guid": "5d7b10ae-b144-4924-ab74-da71baf5dd8f",
                      "title": "Novedades de la 4G+, Datos Cuba y de la Mi Band 5 entre otros temas.",
                      "summary": "<p>Hablamos de sobre la 4G+ en Cuba, la nuevas filtraciones de la Mi Band 5 con asistente de voz, analizamos los nuevos procesadores de Intel, el Samsung 20 Tactical Edition, Vivo X50 Pro y damos las novedades de Datos.</p>\n<p><br></p>\n<p>www.tecnolikeplus.com</p>\n\n--- \n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/14290165/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-25%2F76623307-44100-2-c1ec09000b3d1.mp3",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/Novedades-de-la-4G--Datos-Cuba-y-de-la-Mi-Band-5-entre-otros-temas-eeijpl",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "1836",
                      "publishedAt": "2020-05-26T01:32:32+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_690"
                  },
                  {
                      "slug": "subida-de-precios-de-los-telefonos-en-cuba-y-otras-noticias-de-la-semana",
                      "guid": "84091f8a-13b9-4105-8260-3e02dd5e7cec",
                      "title": "Subida de Precios de los teléfonos en Cuba y otras noticias de la semana",
                      "summary": "<p>En los temas de esta semana tenemos;</p>\n<p>Presentación del PocoPhone F2 Pro y hablaremos de la Aplicación de TecnoLike Plus. Filtraciones del Samsung Galaxy Note 20 y la exagerada Subida de Precios de los teléfonos en Cuba. También hablaremos un poco de la Filtración de los precio del Google Pixel 4a.</p>\n<p><br></p>\n<p>Web: www.tecnolikeplus.com</p>\n\n--- \n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/13955613/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-19%2F74514607-44100-2-784b86dd43966.mp3",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/Subida-de-Precios-de-los-telfonos-en-Cuba-y-otras-noticias-de-la-semana-ee8d2t",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "2405",
                      "publishedAt": "2020-05-19T00:37:25+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_691"
                  },
                  {
                      "slug": "assassin-s-creed-vahala-samsung-aumenta-su-inversion-de-i-d-y-google-lanza-la-developer-preview-4",
                      "guid": "193a5cd4-23c3-4f28-acd0-e8046bb4ae12",
                      "title": "Assassin's Creed Vahala, Samsung aumenta su inversión de I+d y Google lanza la Developer Preview 4",
                      "summary": "Nuevo episodio del Podcast de TecnoLike Plus, donde charlamos un poco sobre algunas de las noticias mas interesantes de la semana, mientras compartimos opiniones a pesar de la ausencia de Julio Lusson. Hoy hablaremos sobre los resultados financieros de Samsung en su último trimestre, el nuevo calendario de actualizaciones para las betas de Android R y las novedades de la Developer Preview 4. También comentamos las nuevas ofertas de ETECSA\n\n\n--- \n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/13624977/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fproduction%2F2020-4-12%2F72339621-44100-2-cd360bb8cafee.mp3",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/Assassins-Creed-Vahala--Samsung-aumenta-su-inversin-de-Id-y-Google-lanza-la-Developer-Preview-4-edua6h",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "1377",
                      "publishedAt": "2020-05-12T02:12:28+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_692"
                  },
                  {
                      "slug": "analisis-y-comparativa-del-pixel-4a-nuevo-lg-velvet-y-presentacion-de-los-pixel-buds-de-google",
                      "guid": "e8edd5e9-334e-4df7-abb2-dc1c54d60081",
                      "title": "Análisis y comparativa del Pixel 4a, Nuevo LG Velvet y presentación de los Pixel Buds de Google",
                      "summary": "<p>Un nuevo capítulo de nuestro Podcast semanal donde damos a conocer las noticias más destacadas de la semana entre las que destacan el los últimos rumores de los nuevos iPhone 12, y la repercusión que han tenido las recién filtradas fotografías del Pixel 4a el cual estuvimos analizando y comparando con la competencia. También comentamos la situación de ETECSA con las ofertas de recarga mientras Julio Lusson se quedaba sin internet</p>\n<p><br></p>\n<p>Blog: <a href=\"https://tecnolikeplus.com/\">https://tecnolikeplus.com/</a></p>\n\n--- \n\nThis episode is sponsored by \n· Anchor: The easiest way to make a podcast.  <a href=\"https://anchor.fm/app\">https://anchor.fm/app</a>\n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/13303961/sponsor/a203e3i/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-05-05%2F186654e3a7a1b3afc2e2409498968a7f.m4a",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/Anlisis-y-comparativa-del-Pixel-4a--Nuevo-LG-Velvet-y-presentacin-de-los-Pixel-Buds-de-Google-edkgmp",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "2567",
                      "publishedAt": "2020-05-05T01:56:16+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_693"
                  },
                  {
                      "slug": "etecsa-ataca-de-nuevo-con-sus-ofertas-android-11-novedades-el-mensaje-que-bloquea-los-iphone",
                      "guid": "f3d875d3-ad55-4012-9a39-7224fc16a900",
                      "title": "ETECSA ataca de nuevo con sus OFERTAS - Android 11 Novedades - El Mensaje que Bloquea los IPHONE",
                      "summary": "Las últimas noticias de la semana en este capítulo, y si que viene cargadito de información. Llegando al final del capítulo no te pierdas la sesión de Offtopic donde te recomendamos series, juegos, películas y mucho más para que estés entretenido en la casa salvando al mundo\n\n--- \n\nThis episode is sponsored by \n· Anchor: The easiest way to make a podcast.  <a href=\"https://anchor.fm/app\">https://anchor.fm/app</a>\n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/12928469/sponsor/a203e3i/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-04-26%2F6f7b827dee2b359fba81b501d7500790.m4a",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/ETECSA-ataca-de-nuevo-con-sus-OFERTAS---Android-11-Novedades---El-Mensaje-que-Bloquea-los-IPHONE-ed920l",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded/4892567/4892567-1587415255532-1bfd202e01d3e.jpg",
                      "itunesDuration": "2706",
                      "publishedAt": "2020-04-27T02:00:37+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_694"
                  },
                  {
                      "slug": "tecnolike-vuelve-en-forma-de-podcast",
                      "guid": "a0182636-a524-4c08-909b-2f59cc434939",
                      "title": "TecnoLike vuelve en forma de Podcast",
                      "summary": "En este podcast vamos a hablar de las noticias más importantes de la última semana. Lanzamiento del iPhone SE 2020. Lanzamiento del OnePlus 8 y 8 Pro. Samsung rebaja su producción de teléfonos inteligentes a la mitad. Sobre la nueva aplicación PESQUISADOR VIRTUAL y de la plataforma de comercio electrónico TuEnvio.\n\n--- \n\nSupport this podcast: <a href=\"https://anchor.fm/tecnolikeplus/support\" rel=\"payment\">https://anchor.fm/tecnolikeplus/support</a>",
                      "enclosure": "https://anchor.fm/s/1dc20d7c/podcast/play/12686497/https%3A%2F%2Fd3ctxlq1ktw2nl.cloudfront.net%2Fstaging%2F2020-04-20%2F939b3cef2d8cb0dcf2266d943429689e.m4a",
                      "link": "https://anchor.fm/tecnolikeplus/episodes/TecnoLike-vuelve-en-forma-de-Podcast-ed1ln1",
                      "image": "https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_episode/4892567/4892567-1587414054833-996bf4fde5645.jpg",
                      "itunesDuration": "2408",
                      "publishedAt": "2020-04-20T20:23:44+00:00",
                      "botDirectLink": "https://t.me/CubaPodBot?start=episode_695"
                  }
              ]
          }
      }
  ]
}''';
