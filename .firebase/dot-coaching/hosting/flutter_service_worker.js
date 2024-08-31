'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"assets/AssetManifest.bin": "2fa3dac5481ecc0cacc76957c1a51081",
"assets/assets/google_fonts/Montserrat-Regular.ttf": "5e077c15f6e1d334dd4e9be62b28ac75",
"assets/assets/google_fonts/Montserrat-Bold.ttf": "ed86af2ed5bbaf879e9f2ec2e2eac929",
"assets/assets/google_fonts/Montserrat-Light.ttf": "94fbe93542f684134cad1d775947ca92",
"assets/assets/google_fonts/Montserrat-ExtraBold.ttf": "9e07cac927a9b4d955e2138bf6136d6a",
"assets/assets/google_fonts/Montserrat-SemiBold.ttf": "cc10461cb5e0a6f2621c7179f4d6de17",
"assets/assets/google_fonts/OFL.txt": "cc9ecd3549266f0241761ac35ede5a88",
"assets/assets/google_fonts/Montserrat-Medium.ttf": "bdb7ba651b7bdcda6ce527b3b6705334",
"assets/assets/google_fonts/Montserrat-Black.ttf": "cce7ff8c1d7999f907b6760fbe75d99d",
"assets/assets/google_fonts/Montserrat-ExtraLight.ttf": "a7fe50578d9aa3966c925cb9722db03a",
"assets/assets/google_fonts/Montserrat-Thin.ttf": "b3638b16904211d1d24d04ce53810c4d",
"assets/assets/icons/evaluate.svg": "9049917e6550f182e4ab21e307632c89",
"assets/assets/icons/ic_black_white.png": "d8b0aa3b72feca07e2daac769ca434d4",
"assets/assets/icons/exam.svg": "911e9a591011488556231b53b786b0e8",
"assets/assets/icons/invite.svg": "44b7d3ca5992f7b705eec0de64c627c2",
"assets/assets/icons/program.svg": "71e5c78be2bbb6676eea32c7c901489e",
"assets/assets/icons/ic_background.png": "6256ce6849b517f60eea264844670e63",
"assets/assets/icons/ic_logo_round.png": "528f49d52cc4ea5f76703091734fe6ea",
"assets/assets/icons/tactical.svg": "80e5abe736c676b0c946f82530ba5a40",
"assets/assets/icons/ic_foreground.png": "8e4981d4fcd6422eb5a39b57b1037772",
"assets/assets/icons/ic_logo_radius.png": "8902375e0ca5313fd186a8847334194b",
"assets/assets/icons/ic_logo_rectangle.png": "82677115bf14663957ac88f1c0394171",
"assets/assets/icons/assets.svg": "6ad7b036bf8f45115d5874d49789e208",
"assets/assets/icons/members.svg": "3d1280636051951930bce61969f56fd7",
"assets/assets/images/hero/sign-up.png": "fbadd026af5ceb8de6fd60ca7003a5e3",
"assets/assets/images/hero/sign-in.png": "c0fae9228871161d9eb9e9780ceddb53",
"assets/assets/images/bg/home-athlete.svg": "98bb1911bff1c5b8d4f300908abc8020",
"assets/assets/images/bg/gradient-skewed-right.svg": "73d9b30ea63deae67b233b92a1dcc060",
"assets/assets/images/bg/F5F6FF-bg.svg": "1b3360f6b1f410a5f9f030b99444dc4c",
"assets/assets/images/flags/hi.svg": "f0e54580838fd126e2162e314825335b",
"assets/assets/images/flags/us.svg": "aefba3fef673e14305b112b0e82805fe",
"assets/assets/images/flags/es.svg": "71f74f8ca5817310a4653f9b80197812",
"assets/assets/images/flags/id.svg": "9d8ebfcc564ae90cb1d06bc3437c4613",
"assets/assets/images/flags/cn.svg": "1c1b281c4c72240b205aaf74fb01b22c",
"assets/assets/images/placeholder/placeholder.png": "f6f930b61684a3618e808b1276980f51",
"assets/assets/images/placeholder/sport.png": "ea28fdb121cad95b8f25bec3c6817e88",
"assets/assets/images/exam/exam-logo.png": "dad1d8abc3d53317319fba8ce1bcd878",
"assets/assets/images/dot_logo.png": "0c60d8f6507df72476b59b4045e25f6b",
"assets/fonts/MaterialIcons-Regular.otf": "f100dfa052e08dc9b2c64ff101f20941",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/packages/moon_icons/lib/fonts/MoonIcons.ttf": "ed07525ed79667eb104ed2c97f545ff4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/timezone/data/latest_all.tzf": "a3a6cb5d912b5375926e5b027f91cb00",
"assets/AssetManifest.bin.json": "b1234b62418a273b0a3a3804828103a9",
"assets/FontManifest.json": "abc7bf964eb2fd0a97f0636b6e2d2ca8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "d0519974ab0a717e199c60ab26089d49",
"assets/AssetManifest.json": "8bc09b2e2c2d87667bdd880facd1f470",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"icons/Icon-192.png": "22c7ada4823c98d38ac97c7f386e2fcc",
"icons/Icon-maskable-192.png": "22c7ada4823c98d38ac97c7f386e2fcc",
"icons/Icon-512.png": "7932454977257ac8e97f2e88b9e11717",
"icons/Icon-maskable-512.png": "7932454977257ac8e97f2e88b9e11717",
"version.json": "acef7466a1937269ad5abfddd0581af2",
"manifest.json": "08551ea8d7d778b57627658aff3a317c",
"favicon.png": "6118ed699fe82b7763cf7466dd2905b2",
"flutter_bootstrap.js": "f7fcbf0c593909cc328e4a0d6131d6fc",
"index.html": "841ad4476b0726cb95e9cc0b0d5c516d",
"/": "841ad4476b0726cb95e9cc0b0d5c516d",
"main.dart.js": "ec1990c8b49a0f6215e40485e27d80f1"};
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
