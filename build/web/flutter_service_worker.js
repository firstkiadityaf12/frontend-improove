'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "2d094dd43c5e5ddf5e73292e0c29b474",
"assets/AssetManifest.bin.json": "88c2825956d6d5555f7b224219579ef7",
"assets/AssetManifest.json": "48195483903820e19de498a9e74765b7",
"assets/assets/backgrounds/board.png": "43e2abc71b6fe4875e798117ff9e9675",
"assets/assets/backgrounds/bro.png": "e4f959a706a1a7d75d57f6c40f656cfd",
"assets/assets/backgrounds/catur.png": "107172fb6506770b0b7ac9bf8ee202d2",
"assets/assets/backgrounds/catur2.png": "eb57753ad8f7da66749bf27113f92c40",
"assets/assets/backgrounds/clock.png": "4fb7a7f9690806485d20fe50b5504d90",
"assets/assets/backgrounds/file-cabinet.png": "04a6a958296745706db66719adb5ca9d",
"assets/assets/backgrounds/magnet_blue.png": "ee45453cb10db9b4de596edff05da83b",
"assets/assets/backgrounds/magnet_blue2.png": "78f98101bceb51eb8d4f257e44bdda49",
"assets/assets/backgrounds/magnet_yellow.png": "7c2805d711c02c81f318af5f7c11d796",
"assets/assets/backgrounds/magnet_yellow2.png": "c6a9c08acd4d1e25c1d8887aa915227a",
"assets/assets/backgrounds/pattern.png": "6f6b0e61507be0492ace3265acc40d2e",
"assets/assets/backgrounds/pattern2.png": "022e9dd291f3fc4ab6b42dd73bf0e1fa",
"assets/assets/backgrounds/surf_pattern.png": "1f19e6981c3a1ccbab658e2290fa33d0",
"assets/assets/backgrounds/surf_pattern2.png": "2c8499a077241daaf99ed8b438786182",
"assets/assets/backgrounds/surf_pattern3.png": "7a0ba8181f3b8e00602c0b24f33d2947",
"assets/assets/backgrounds/vector_yellow.png": "b1f0e97528077cfc1c735cb55b22c9cb",
"assets/assets/icons/bullseye.svg": "4b0bc1902a222359a45d406fc2c210ae",
"assets/assets/icons/call.svg": "ccf092dc695abc6f910821555b8ef8f3",
"assets/assets/icons/copyright.svg": "1b46f28b62c5e9baa1509ff4f371298d",
"assets/assets/icons/download.svg": "eb53abd32b1b5f07cf8c762e01b9f06d",
"assets/assets/icons/facebook.svg": "4bec4212ccea33d675c5eebf37e9b5a9",
"assets/assets/icons/google.svg": "086c638ac09f95a642fe294d0c9b4454",
"assets/assets/icons/instagram.svg": "ac34e8fdc8860027581da509786198e7",
"assets/assets/icons/linkedln.svg": "9cf16b40796a0b36f6d17e10dec26a6e",
"assets/assets/icons/magister.svg": "b4c51a2573a96d5b2ea5122a14540ed3",
"assets/assets/icons/map.svg": "0f5321bb04352fa2c4277508458b3d72",
"assets/assets/icons/pinterest.svg": "f8603e829f4d63817d911778226e92ad",
"assets/assets/icons/print.svg": "de86f54ea56ea7f85689efc9b399c4f0",
"assets/assets/icons/twitter.svg": "ea024274e3d036cbf6bc912277c83334",
"assets/assets/icons/wifi.svg": "7c053b2777f24ed30ad7300e1a6ffb75",
"assets/assets/icons/youtube.svg": "bd88513d1bf19edca0a925a8a8408236",
"assets/assets/items/ai.png": "6ccf97a18780298fef9fb7b03b861f8c",
"assets/assets/items/cv.png": "61228ff1d6ba44826a84900ede980792",
"assets/assets/items/mockup_app.zip": "b003676383785e0d2c6ad2fd5229a1c7",
"assets/assets/items/mockup_iphone.png": "499e98a39291e5883497086da70bbbb8",
"assets/assets/items/mockup_logo.png": "54aef9eb5104e716416c5fd4235d1975",
"assets/assets/items/project.png": "fbc2fb95a6f8801f6c5435c615d503d0",
"assets/assets/items/student.png": "64c3a5fbf4dfbf166ff2a2ef8d7d35eb",
"assets/assets/logos/alabama.svg": "6e801c859cb723cc1be1f9654ad70b27",
"assets/assets/logos/bsc.svg": "9354d5263f7e16a6fb599a06fbfa7fbc",
"assets/assets/logos/logo.svg": "0e6edaa0b1a2f2094a69e140ea76ac75",
"assets/assets/logos/morehouse.svg": "09800d1071f8b39667a31a7cf8693eb3",
"assets/assets/logos/oklahoma.svg": "ab6b449054783939a1813cf334e1b7b4",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "08751685b505515135ab1a8ce9eb808c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "52480d33a4d927cf6587c47d071727c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "35be790e0b1a9da549798436bdb6515b",
"/": "35be790e0b1a9da549798436bdb6515b",
"main.dart.js": "ba0ffd4f78845395645f726a7b5a2b17",
"manifest.json": "44aa2a7f503cb5b350888ce441636a7e",
"version.json": "b60cb8100cbd776326f041bd478cc578"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
