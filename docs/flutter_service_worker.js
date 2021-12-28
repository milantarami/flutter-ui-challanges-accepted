'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "db43b7cc1a843edbd765eaeb25cff8e6",
"assets/assets/fonts/Josefin_Sans/static/JosefinSans-Bold.ttf": "75d240293f611020f2885e035a705f4e",
"assets/assets/fonts/Josefin_Sans/static/JosefinSans-Medium.ttf": "ddcdabcf927d0d57b5be33701b563828",
"assets/assets/fonts/Josefin_Sans/static/JosefinSans-Regular.ttf": "74ae0793945e421d248fe27905c248a3",
"assets/assets/fonts/Josefin_Sans/static/JosefinSans-Semibold.ttf": "f5c12a8ff92995d15bc240053d60db48",
"assets/assets/fonts/Josefin_Sans/static/JosefinSans-Thin.ttf": "f2352c6140b18f3334bde93c34e53734",
"assets/assets/fonts/PhonkContrastDEMO/SlavaAntipov-PhonkContrastDEMO.ttf": "10809640af9a4997f777e8ed39e70f0e",
"assets/assets/fonts/Poppins/Poppins-Black.ttf": "0573b9231a8316427ad6e751b52e87a4",
"assets/assets/fonts/Poppins/Poppins-BlackItalic.ttf": "3fb21c8084013f3d0176bc98bcf76e60",
"assets/assets/fonts/Poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/Poppins/Poppins-BoldItalic.ttf": "09775bde3e9448b38c063b746e21cb6b",
"assets/assets/fonts/Poppins/Poppins-ExtraBold.ttf": "544fa4f2678a8285eb88b8dfe503c90c",
"assets/assets/fonts/Poppins/Poppins-ExtraBoldItalic.ttf": "29f7dd016eeed2bcd79ba482eb3f27ec",
"assets/assets/fonts/Poppins/Poppins-ExtraLight.ttf": "86a2f13e91ac85080ebaeaab9463b9f1",
"assets/assets/fonts/Poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/assets/fonts/Poppins/Poppins-LightItalic.ttf": "1eaf3af47612e6163a2e27e847c6ac7d",
"assets/assets/fonts/Poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/fonts/Poppins/Poppins-MediumItalic.ttf": "1749e4b603749026393f64506a3bcbbe",
"assets/assets/fonts/Poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/fonts/Poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/fonts/Poppins/Poppins-SemiBoldItalic.ttf": "378a091bc1b1e6e6d6327beb6bfb07b9",
"assets/assets/fonts/Poppins/Poppins-Thin.ttf": "25cd0f688f815bc4f6ac2b71eb6278ba",
"assets/assets/fonts/Poppins/Poppins-ThinItalic.ttf": "c93e22e98b7a8d58f83ce42b278815eb",
"assets/assets/images/alexandra-dementyeva-wPBbPkZZu8E-unsplash.jpg": "01408d6e80e2c90dc37a7ddaa24eb7b7",
"assets/assets/images/alfons-taekema-uOmhrkwy234-unsplash.jpg": "1b7fc75f701707ae00501763ff4a1034",
"assets/assets/images/anthony-delanoix-Q0-fOL2nqZc-unsplash.jpg": "ee5967a5a855f85311dc60df23d0ca09",
"assets/assets/images/caio-coelho-QRN47la37gw-unsplash.jpg": "6af15276b767a56caf2828c6ba71d9af",
"assets/assets/images/eiliv-sonas-aceron-ZuIDLSz3XLg-unsplash.jpg": "e497bf6080cc58cb2ed079629ad23192",
"assets/assets/images/hamed-foroutan-8WsfFDuK1l0-unsplash.jpg": "d309901ceec38f3412d5bb7d856556e1",
"assets/assets/images/ian-dooley-hpTH5b6mo2s-unsplash.jpg": "4e2a594d097e5abee1a6168b68768f5f",
"assets/assets/images/l-a-l-a-s-z-a-S0hS0HfH_B8-unsplash.jpg": "75f9fffc2846f17c5149be683d87ab48",
"assets/assets/images/meera-pankhania-7cENZhgyf7c-unsplash.jpg": "1f85b826215744b44eeeca01ded8c506",
"assets/assets/images/photo-1624628639856-100bf817fd35.jpg": "f5595643c2ff9cde0f3791deabb54999",
"assets/assets/images/raimond-klavins-59Al83Zjtf8-unsplash.jpg": "028a18c021750953d0173644f733216d",
"assets/assets/images/thomas-richter-8R7BE-piQqo-unsplash.jpg": "dd09dbf5975da10af5abb71b6c8a8191",
"assets/assets/images/tom-barrett-M0AWNxnLaMw-unsplash.jpg": "686bbb68162dd2f62e34c9a487e2662b",
"assets/assets/images/tomas-nozina-UP22zkjJGZo-unsplash.jpg": "9a05c909eb982b6106f83976409ff945",
"assets/assets/images/uriel-soberanes-MxVkWPiJALs-unsplash.jpg": "05ea6430d0baf7bc4895ea62e9bb1c3a",
"assets/assets/svg/icons8-apple-logo.svg": "3abec3500d25061c5aef463f95e8cb5f",
"assets/assets/svg/icons8-facebook.svg": "6b446a380e308ad3d84cf955d088f3be",
"assets/assets/svg/icons8-google.svg": "b02770093748aa06a282ac5cd7fd2f0a",
"assets/assets/svg/undraw_romantic_getaway_re_3f45.svg": "857fb4ba9f2816a5ba298b8de8042ade",
"assets/FontManifest.json": "4c6d62dc01b588302ff22c00c979d511",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "4311e5ec2fbf6f6a5885e3cb0087959f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5d237d419de2b51fdaa3816d6d447e3d",
"/": "5d237d419de2b51fdaa3816d6d447e3d",
"main.dart.js": "2d89b646b262f15ecf5832f32493e39b",
"manifest.json": "41120bb4f09616fbc7f40d28a0305323",
"version.json": "93ba174cc39d9017b9e08a13e132bb20"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
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
