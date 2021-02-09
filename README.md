[![MIT License][license-badge]][license-link]

# CubaPod

Unofficial application of the [Cubapod](https://cubapod.net) pltaform using Graphql and the [Flutter SDK](https://flutter.dev).

It uses the Clean Architecture pattern, and for presentation layer state management it uses [Riverpod](https://riverpod.dev).

Flutter support:
* [x] iOS
* [x] Android
* [x] Web

## Working on this

<input type="checkbox" eneable checked /> 
Selection of preferred category screen:

<ul>
<input type="checkbox" eneable checked /> Save list locally
</ul>
<ul>
<input type="checkbox" eneable checked /> Search category
</ul>

<input type="checkbox" disabled checked /> 
Podcast list by categories screen:
<ul>
<input type="checkbox" eneable checked /> 
Podcast details screen
</ul>
<ul role="tree">
<ul>
<input type="checkbox" eneable checked /> 
Information page
</ul>
<ul>
<input type="checkbox" eneable checked /> 
List of episodes page
</ul>
<ul role="tree">
<ul>
<input type="checkbox" disabled checked /> Episode details
</ul>
</ul>
</ul>


<input type="checkbox" disabled checked /> 
Podcast player:
<ul>
<input type="checkbox" disabled checked /> Play
</ul>
<ul>
<input type="checkbox" disabled checked /> Paused
</ul>
<ul>
<input type="checkbox" disabled checked /> Stop
</ul>

<input type="checkbox" disabled checked /> 
Search podcast screen:
<ul>
<input type="checkbox" disabled checked /> Search by podcast name.
</ul>

<input type="checkbox" disabled checked /> 
Favorite podcast list screen:
<ul>
<input type="checkbox" disabled checked /> Add/Delete podcast favorite.
</ul>

<input type="checkbox" disabled checked /> 
Setting screen:
<ul>
<input type="checkbox" disabled checked /> Dark mode
</ul>
<ul>
<input type="checkbox" disabled checked /> Select number of day for which items will be stored in the cache.
</ul>
<ul>
<input type="checkbox" disabled checked /> Delete all cache.
</ul>


[license-badge]: https://img.shields.io/github/license/zino-app/graphql-flutter.svg?style=flat-square
[license-link]: https://github.com/zino-app/graphql-flutter/blob/master/LICENSE