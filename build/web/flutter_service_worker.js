'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "5bc77b131d5a06bd8d9ba4af1e2c308e",
"assets/AssetManifest.bin.json": "90c4be999d593a856f4dd36bc2655b96",
"assets/AssetManifest.json": "3b313ac6d2e38880ec373cbb17f6b1e4",
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
"assets/assets/app_store_img.png": "7cd2224a36b4942d6bd49c81c4ad26cd",
"assets/assets/arrow.png": "0f4fba75e0a3ce846c91cef7839268bc",
"assets/assets/background2.png": "d3cb3b8c76aff67228d33124a6e8e221",
"assets/assets/background_image.png": "830b304da14df067a34c4caa243a0b47",
"assets/assets/benefit1.png": "d83309871354bd927b2980a790dcfd80",
"assets/assets/benefit2.png": "bc29a73259125ef4ea6477cdd2b9598e",
"assets/assets/benefit3.png": "97eb5a85f78e29fdb13a9b5193e9eac9",
"assets/assets/benefit4.png": "9d7d8661a46f7ef7f09172d4a0e11a05",
"assets/assets/benefit5.png": "3929e4a496a1ddb11a2bc1624e5a2492",
"assets/assets/business_hours.png": "4dd88cdaf7009910f7bf564d1fdebda5",
"assets/assets/bussiness_screen_man.png": "4dd88cdaf7009910f7bf564d1fdebda5",
"assets/assets/client_help1.png": "c7ed84fa20b53ce7a46dd717788b7d83",
"assets/assets/client_help2.png": "264243bdfa61fd18d8c48b9dc1ff08c2",
"assets/assets/client_help3.png": "496eea549f6c4b07feef7eb00e2bcddb",
"assets/assets/client_help4.png": "229c9395db0c062f76a4c0184f367149",
"assets/assets/client_help5.png": "78568a5d238584c99b04be2968081bca",
"assets/assets/facebook.png": "d4ef3b2f18e064164888b7ec21c8bd61",
"assets/assets/facebook_icon.png": "b27cb67f5491454f036141a98231bf8f",
"assets/assets/facebook_icon2.png": "318ab8c70ef4b5a42d6914b35ab5cea6",
"assets/assets/google_icon.png": "f211a43829b6a9bc88eca4521a78c255",
"assets/assets/google_map.png": "901e6a2a93439a1c8e0c7090d6f75c40",
"assets/assets/google_store.png": "d64668facf9f79bb7d7e358b71788aa3",
"assets/assets/header_logo.png": "d78abe56dd9b25ea5fede3c6321a0389",
"assets/assets/hero_img.png": "d78abe56dd9b25ea5fede3c6321a0389",
"assets/assets/hero_section2.png": "07a08025172243e2117d7ab52b667543",
"assets/assets/hero_section3.png": "b47084c4c7e179df6e0b770ad4d84e50",
"assets/assets/hero_section4.png": "5e18a5da849572ce1714828fdad58211",
"assets/assets/hero_section5.png": "831ecf176abbee44c81e450c5416404b",
"assets/assets/hero_section6.png": "b05bea995b3a8eeb65fa92737d5edb4a",
"assets/assets/hero_section7.png": "2f0c71a5dfc6d86153a581d79268e7ea",
"assets/assets/hero_section8.png": "16fffcbe6cf69acc70325be34ebea5db",
"assets/assets/insta.png": "dcff083c847625fa39f8de26c4aa0777",
"assets/assets/instagram_icon.png": "f68aca005ab18000fadda9d96e81b5cf",
"assets/assets/linkedin.png": "0a26d101e2930f95f06c4be366c992c7",
"assets/assets/linkedin_icon.png": "78ef6a5049692ae2bcf63745d36dbce4",
"assets/assets/logo.png": "e8fd96e74dcf9986cb8005c4e5239a91",
"assets/assets/master_card.png": "bb9bb8efe5fb6b3fd3df1811d0eed3bb",
"assets/assets/profile_screen_boy_img.png": "414515013fa569d60d898a44d387b243",
"assets/assets/settings1.png": "65f9579edb2306195a44c9b97f716435",
"assets/assets/settings2.png": "8c664050826b5d7a3fa706a08b278f33",
"assets/assets/settings3.png": "b7a3937faad6dca97261ad10ac4de038",
"assets/assets/settings4.png": "a5c775de36c9668229908a19511d7751",
"assets/assets/settings5.png": "8df0ca19ed48dc13ea28402c5137dfa9",
"assets/assets/settings6.png": "a06dabdf29bc1b52fdc932853a93de10",
"assets/assets/settings7.png": "ebccdac4fa09c1ea1d4e2619f2fdf8c4",
"assets/assets/settings8.png": "0b547fad0e65f1b8df89449d7f19f941",
"assets/assets/sign_up_girl_img.png": "3d6d1ea2c1d4a8afefda5e4e36d6747b",
"assets/assets/twitter.png": "66094d835f087ddc3d9c7148ad115785",
"assets/assets/twitter_icon.png": "99721bb70f506c2d7859b276c1b25da5",
"assets/assets/visa_icon.png": "1ba4011ee9066497ee67c168a00f1a51",
"assets/assets/youtube.png": "b7dd07c8074b8d43be72a9652b398292",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "906ba58e2c2a2f1e16ed66fc393dba4d",
"assets/NOTICES": "8f8084de65c92430b7a2b5554802a30e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "49a31a5b6491d5046875675fc03ad0c8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "b2ea7c22702e28f2fae4bba92f628468",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3c8089b05fd1198b4ae55fefeae124e1",
"/": "3c8089b05fd1198b4ae55fefeae124e1",
"main.dart.js": "ab97a589eb5c8b76d59a945a60976e81",
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
