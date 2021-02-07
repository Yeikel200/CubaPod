const qPodcasts_lite = r'''
query podcasts($categorySlug: String!,) {
  podcasts(categorySlug: $categorySlug) {
        slug
        title
        url
        subtitle
        image
        link
        author
        summary
        episodesCount
        category {
            name
            slug
        }
    }
}''';

// {
//    "categorySlug" = "tecnologia"
//  }

const responsePodcastsLite = r'''
{
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
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
              "slug": "tecnologia"
          }
      },
      {
          "title": null,
          "url": "https://tupodcast.com/feed/errorenelsistema",
          "subtitle": null,
          "image": null,
          "link": null,
          "author": null,
          "summary": null,
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia"
          }
      },
      {
          "title": null,
          "url": "https://tupodcast.com/feed/systeminside",
          "subtitle": null,
          "image": null,
          "link": null,
          "author": null,
          "summary": null,
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia"
          }
      },
      {
          "title": null,
          "url": "https://tupodcast.com/feed/elbache",
          "subtitle": null,
          "image": null,
          "link": null,
          "author": null,
          "summary": null,
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia"
          }
      },
      {
          "title": null,
          "url": "https://tupodcast.com/feed/aftp",
          "subtitle": null,
          "image": null,
          "link": null,
          "author": null,
          "summary": null,
          "category": {
              "name": "Tecnología",
              "slug": "tecnologia"
          }
      }
 ]
}''';
