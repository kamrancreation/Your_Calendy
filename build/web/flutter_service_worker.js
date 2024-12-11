'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "01f3a19fd5013610cd4f7cc071a826c3",
"assets/AssetManifest.bin.json": "69b3e5265f021994a43a9ec5eda5f86d",
"assets/AssetManifest.json": "75613f2d99ac175b13261a593a8d90ba",
"assets/assets/advantages1.png": "1dc6417c81bc6aa7ac1cd6de0e6794da",
"assets/assets/advantages10.png": "157d86c7818f7f9defdb43df8aef4ca8",
"assets/assets/advantages11.png": "c2f22d18a2424fc399d67df10b49eabd",
"assets/assets/advantages2.png": "c4e325c5e978c40d575c121df43ba0ae",
"assets/assets/advantages3.png": "08631cb6b7302b2fbde65b81bdc98672",
"assets/assets/advantages4.png": "24ec7d89b64c5e81c6f28bd0578d12cd",
"assets/assets/advantages5.png": "260ff254c42f87ab0d530f38bd2dd729",
"assets/assets/advantages6.png": "d06f841fa78fa9b56a87934739be122f",
"assets/assets/advantages7.png": "936d9f28b7bc04e520a0f3f0e334d43c",
"assets/assets/advantages8.png": "a7c0924ea555141e3370a004a74a3827",
"assets/assets/advantages9.png": "29792137c9939708c7b0d27f7fffc357",
"assets/assets/background2.png": "d3cb3b8c76aff67228d33124a6e8e221",
"assets/assets/background_image.png": "e99852699539f73d66ae1d8703d0d574",
"assets/assets/benefit1.png": "d83309871354bd927b2980a790dcfd80",
"assets/assets/benefit2.png": "bc29a73259125ef4ea6477cdd2b9598e",
"assets/assets/benefit3.png": "97eb5a85f78e29fdb13a9b5193e9eac9",
"assets/assets/benefit4.png": "9d7d8661a46f7ef7f09172d4a0e11a05",
"assets/assets/benefit5.png": "3929e4a496a1ddb11a2bc1624e5a2492",
"assets/assets/client_help1.png": "c7ed84fa20b53ce7a46dd717788b7d83",
"assets/assets/client_help2.png": "264243bdfa61fd18d8c48b9dc1ff08c2",
"assets/assets/client_help3.png": "496eea549f6c4b07feef7eb00e2bcddb",
"assets/assets/client_help4.png": "229c9395db0c062f76a4c0184f367149",
"assets/assets/client_help5.png": "78568a5d238584c99b04be2968081bca",
"assets/assets/facebook.png": "d4ef3b2f18e064164888b7ec21c8bd61",
"assets/assets/hero_section2.png": "07a08025172243e2117d7ab52b667543",
"assets/assets/hero_section3.png": "b47084c4c7e179df6e0b770ad4d84e50",
"assets/assets/hero_section4.png": "5e18a5da849572ce1714828fdad58211",
"assets/assets/hero_section5.png": "831ecf176abbee44c81e450c5416404b",
"assets/assets/hero_section6.png": "b05bea995b3a8eeb65fa92737d5edb4a",
"assets/assets/hero_section7.png": "2f0c71a5dfc6d86153a581d79268e7ea",
"assets/assets/hero_section8.png": "16fffcbe6cf69acc70325be34ebea5db",
"assets/assets/insta.png": "dcff083c847625fa39f8de26c4aa0777",
"assets/assets/linkedin.png": "0a26d101e2930f95f06c4be366c992c7",
"assets/assets/logo.png": "e8fd96e74dcf9986cb8005c4e5239a91",
"assets/assets/settings1.png": "65f9579edb2306195a44c9b97f716435",
"assets/assets/settings2.png": "8c664050826b5d7a3fa706a08b278f33",
"assets/assets/settings3.png": "b7a3937faad6dca97261ad10ac4de038",
"assets/assets/settings4.png": "a5c775de36c9668229908a19511d7751",
"assets/assets/settings5.png": "8df0ca19ed48dc13ea28402c5137dfa9",
"assets/assets/settings6.png": "a06dabdf29bc1b52fdc932853a93de10",
"assets/assets/settings7.png": "ebccdac4fa09c1ea1d4e2619f2fdf8c4",
"assets/assets/settings8.png": "0b547fad0e65f1b8df89449d7f19f941",
"assets/assets/twitter.png": "66094d835f087ddc3d9c7148ad115785",
"assets/assets/youtube.png": "b7dd07c8074b8d43be72a9652b398292",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "7205c12f0246a82c836d947a0a26e8bc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "9011bd0c90a3072b55b97fb1850636d9",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "30c3089d84922e038f67061f5179990a",
"/": "30c3089d84922e038f67061f5179990a",
"main.dart.js": "2f86f6d6b7df020ff0e612adde4cd8d5",
"manifest.json": "a95299e47281670fc886986a8a2c275b",
"version.json": "0aeb72a2c1e43f7ef31fb5709cf52da5"};
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
