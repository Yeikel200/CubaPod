const qPodcast = r'''
query podcast ($page: Int, $slug: String!) {
    podcast (slug: $slug) {
        slug
        title
        subtitle
        image
        author
        summary
        episodesCount
        category {
            name
            slug
            description
            img
            color
            podcastsCount
        }
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
            }
        }
    }
}''';

const responsePodcast = '''
{
  "podcast": {
      "slug": "el-bache",
      "title": "El Bache",
      "subtitle": "El Bache",
      "image": "https://tupodcast.com/cdn_tupodcast/img/elbache_itunes_new.jpg",
      "author": "kopek@bachecubano.com (TuPodcast)",
      "summary": "Un Podcast tecnológico muy troll de parte de Edo Pujol y Erich García",
      "episodesCount": 22,
      "category": {
          "name": "Tecnología",
          "slug": "tecnologia",
          "description": "La actualidad de la innovación tecnológica",
          "img": "categories/technology.png",
          "color": "#33A8C7",
          "podcastsCount": 16
      },
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
                  "publishedAt": "2021-01-25T22:34:02+00:00"
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
                  "publishedAt": "2021-01-15T23:55:13+00:00"
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
                  "publishedAt": "2021-01-08T23:43:21+00:00"
              }
          ]
      }
  }
}''';
