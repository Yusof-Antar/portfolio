'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "f08d8c5463d99871ce0fab6141e37f3f",
"assets/assets/icon/1bcfb73d": "7728e4c40b516b43d0c7ef4891e433e5",
"assets/assets/icon/2979d67a": "a8769b02283fb82e97e324c3d2c3a5af",
"assets/assets/icon/3db992a6": "695f041606d141437f25eae51b1b5c1e",
"assets/assets/icon/408b4e7e": "30868959aa86a847766d9c687437ab14",
"assets/assets/icon/4badf365": "b7a2148e573aac70d5b3dd20af199d1a",
"assets/assets/icon/7224a5ef": "7665f0ffb3eab4c00b7d17a6880ef305",
"assets/assets/icon/7eb46044": "ab1ab6581eaca357c36eaf169bf44ebb",
"assets/assets/icon/87ccfe9f": "0bb4ba93d492fb099e722b7041e3f56d",
"assets/assets/icon/9b4bcbd7": "dd3dc3c49e551ad172d8bc0470b7e9ca",
"assets/assets/icon/beec9f09": "2e82798eabb3a73b43dedc93eedee1c6",
"assets/assets/icon/book-solid.svg": "dd3dc3c49e551ad172d8bc0470b7e9ca",
"assets/assets/icon/brain-solid.svg": "2e82798eabb3a73b43dedc93eedee1c6",
"assets/assets/icon/briefcase-solid.svg": "30868959aa86a847766d9c687437ab14",
"assets/assets/icon/c165a437": "5a797648372d17d623a09b2bed54a60c",
"assets/assets/icon/certificate-solid.svg": "ec78b756d56453d150f09e8a08b6937a",
"assets/assets/icon/code-solid.svg": "85525ac81eaa61f832313f1458bc2e98",
"assets/assets/icon/de3b0c4f": "644d343cb3c38f78d80c1e34ef3926db",
"assets/assets/icon/diagram-project-solid.svg": "0bb4ba93d492fb099e722b7041e3f56d",
"assets/assets/icon/e1cd2ba2": "85525ac81eaa61f832313f1458bc2e98",
"assets/assets/icon/e47f293f": "2aad84bbdf2a933fb17da433d21ce430",
"assets/assets/icon/fc22eaf0": "ec78b756d56453d150f09e8a08b6937a",
"assets/assets/icon/github-brands.svg": "2aad84bbdf2a933fb17da433d21ce430",
"assets/assets/icon/house-solid.svg": "a8769b02283fb82e97e324c3d2c3a5af",
"assets/assets/icon/inbox-solid.svg": "695f041606d141437f25eae51b1b5c1e",
"assets/assets/icon/instagram-brands.svg": "ab1ab6581eaca357c36eaf169bf44ebb",
"assets/assets/icon/laptop-code-solid.svg": "5a797648372d17d623a09b2bed54a60c",
"assets/assets/icon/linkedin-brands.svg": "b7a2148e573aac70d5b3dd20af199d1a",
"assets/assets/icon/message-svgrepo-com.svg": "7728e4c40b516b43d0c7ef4891e433e5",
"assets/assets/icon/mouse-svgrepo-com.svg": "644d343cb3c38f78d80c1e34ef3926db",
"assets/assets/icon/user-solid.svg": "a8dc4d4e0c6cba37ed313f256f40e931",
"assets/assets/icon/whatsapp-svgrepo-com.svg": "7665f0ffb3eab4c00b7d17a6880ef305",
"assets/assets/images/1e831764": "5032d5af74849a30dd2af4e056476428",
"assets/assets/images/24def3f4": "014b83cc6497ea333834d41e767b8299",
"assets/assets/images/53a070b9": "bfb3219d86cf9e48bb44d1a9521e2a1f",
"assets/assets/images/9bd53488": "2ec928d17de162033266006ed5ae7848",
"assets/assets/images/bad3113e": "ac6a41a570245dd8ba794f2d36144149",
"assets/assets/images/d7cdf077": "3b0307cf934b29fec54f6ae0a06a018c",
"assets/assets/images/framework_svg.svg": "bfb3219d86cf9e48bb44d1a9521e2a1f",
"assets/assets/images/languages_svg.svg": "ac6a41a570245dd8ba794f2d36144149",
"assets/assets/images/mobile_app_svg.svg": "3b0307cf934b29fec54f6ae0a06a018c",
"assets/assets/images/second_page.svg": "2ec928d17de162033266006ed5ae7848",
"assets/assets/images/skills_svg.svg": "5032d5af74849a30dd2af4e056476428",
"assets/assets/images/website_svg.svg": "014b83cc6497ea333834d41e767b8299",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "9e70e2eb237b62a21e5b0478a67adb75",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e57e506e763d674117cf681305b5181b",
"/": "e57e506e763d674117cf681305b5181b",
"main.dart.js": "45542befd4a9dba96201f5c19d629fd4",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
