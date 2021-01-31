const qCategory = r'''
query category ($slug: String!) {
    category (slug: $slug) {
        name
        slug
        description
        img
        icon
        color
        podcastsCount
    }
}
''';

const responseCategory = '''
{
    "data": {
        "category": {
            "name": "Tecnología",
            "slug": "tecnologia",
            "description": "La actualidad de la innovación tecnológica",
            "img": "categories/technology.png",
            "icon": "space-station",
            "color": "#33A8C7",
            "podcastsCount": 16
        }
    }
}''';
