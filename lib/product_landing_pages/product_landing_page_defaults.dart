/// Default page structure for AI-generated image landing pages and empty pages.
///
/// - [imageLandingPageDefaults]: Used when creating a [ProductLandingPage] after
///   successful image generation. The placeholder `{{image url}}` must be
///   replaced with the actual generated image URL before creating the page.
/// - [emptyLandingPageDefaults]: Minimal structure (navbar + order button + space)
///   for a blank landing page; the user adds content in the editor.
library;

/// Placeholder string to replace with the generated image URL.
const String kImageUrlPlaceholder = '{{image url}}';

/// Default page structure for image-based product landing pages.
///
/// Contains navbar, image (with placeholder), order floating button, and space.
/// Call [defaultsWithImageUrl] to get a copy with the image URL filled in.
Map<String, dynamic> get imageLandingPageDefaults => {
      'pages': {
        'landing_page': {
          'props': {},
          'sections': {
            'main': {
              'components': [
                {
                  'type': 'navbar',
                  'instanceId': 'navbar_1769925274262',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'logoPosition': 'left',
                    'logoSize': 'medium',
                    'showLinks': true,
                    'showCart': true,
                    'showSearch': true,
                    'showThemeToggle': true,
                    'showLanguageSwitcher': false,
                    'sticky': true,
                    'navItems': [
                      {
                        'label': 'الرئيسية',
                        'href': '/',
                        'icon': 'home',
                        'showIcon': false,
                        'external': false,
                      },
                      {
                        'label': 'المنتجات',
                        'href': '/products',
                        'icon': 'products',
                        'showIcon': false,
                        'external': false,
                      },
                      {
                        'label': 'اتصل بنا',
                        'href': '/contact',
                        'icon': 'contact',
                        'showIcon': false,
                        'external': false,
                      },
                    ],
                    'showBanner': false,
                    'bannerBgColor': '#3B82F6',
                    'bannerTextColor': '#FFFFFF',
                    'transparent': false,
                    'blurEffect': true,
                  },
                  'children': [],
                },
                {
                  'type': 'image',
                  'instanceId': 'image_1771905092289',
                  'title': 'landing page image',
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'alt': 'صورة',
                    'width': 'auto',
                    'height': 'auto',
                    'fit': 'cover',
                    'src': kImageUrlPlaceholder,
                  },
                  'children': [],
                },
                {
                  'type': 'order_floating_button',
                  'instanceId': 'order_floating_button_1769689596894',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'action': 'popup',
                  },
                  'children': [],
                },
                {
                  'type': 'space',
                  'instanceId': 'space_1769691705571',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'size': 100,
                  },
                  'children': [],
                },
              ],
            },
          },
        },
      },
      'props': {
        'theme': {
          'mode': 'light',
          'rounded': 30,
          'font': 'expoArabic',
        },
        'bg': 4294967295,
        'text_color': 4294967295,
        'padding': 0,
        'container': {
          'container': true,
          'maxWidth': 1000.9999999999999,
        },
      },
    };

/// Default page structure for empty product landing pages.
///
/// Contains only navbar, order floating button, and space. The user can add
/// whatever content they want in the editor after creation.
Map<String, dynamic> get emptyLandingPageDefaults => {
      'pages': {
        'landing_page': {
          'props': {},
          'sections': {
            'main': {
              'components': [
                {
                  'type': 'navbar',
                  'instanceId': 'navbar_1769925274262',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'logoPosition': 'left',
                    'logoSize': 'medium',
                    'showLinks': true,
                    'showCart': true,
                    'showSearch': true,
                    'showThemeToggle': true,
                    'showLanguageSwitcher': false,
                    'sticky': true,
                    'navItems': [
                      {
                        'label': 'الرئيسية',
                        'href': '/',
                        'icon': 'home',
                        'showIcon': false,
                        'external': false,
                      },
                      {
                        'label': 'المنتجات',
                        'href': '/products',
                        'icon': 'products',
                        'showIcon': false,
                        'external': false,
                      },
                      {
                        'label': 'اتصل بنا',
                        'href': '/contact',
                        'icon': 'contact',
                        'showIcon': false,
                        'external': false,
                      },
                    ],
                    'showBanner': false,
                    'bannerBgColor': '#3B82F6',
                    'bannerTextColor': '#FFFFFF',
                    'transparent': false,
                    'blurEffect': true,
                  },
                  'children': [],
                },
                {
                  'type': 'order_floating_button',
                  'instanceId': 'order_floating_button_1769689596894',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'action': 'popup',
                  },
                  'children': [],
                },
                {
                  'type': 'space',
                  'instanceId': 'space_1769691705571',
                  'title': null,
                  'code': null,
                  'propsSchema': null,
                  'props': {
                    'size': 100,
                  },
                  'children': [],
                },
              ],
            },
          },
        },
      },
      'props': {
        'theme': {
          'mode': 'light',
          'rounded': 30,
          'font': 'expoArabic',
        },
        'bg': 4294967295,
        'text_color': 4294967295,
        'padding': 0,
        'container': {
          'container': true,
          'maxWidth': 1000.9999999999999,
        },
      },
    };

/// Returns a deep copy of [imageLandingPageDefaults] with [imageUrl] replacing
/// the [kImageUrlPlaceholder] in the image component's src.
Map<String, dynamic> defaultsWithImageUrl(String imageUrl) {
  final defaults = _deepCopy(imageLandingPageDefaults);
  _replaceImagePlaceholder(defaults, imageUrl);
  return defaults;
}

void _replaceImagePlaceholder(Map map, String imageUrl) {
  for (final entry in map.entries) {
    if (entry.value is Map) {
      _replaceImagePlaceholder(entry.value as Map, imageUrl);
    } else if (entry.value is List) {
      for (final item in entry.value as List) {
        if (item is Map) {
          _replaceImagePlaceholder(item, imageUrl);
        }
      }
    } else if (entry.key == 'src' &&
        entry.value is String &&
        entry.value == kImageUrlPlaceholder) {
      map[entry.key] = imageUrl;
    }
  }
}

/// Deep copy that ensures all nested maps are [Map<String, dynamic>],
/// avoiding [Map<dynamic, dynamic>] type cast errors when serializing.
Map<String, dynamic> _deepCopy(Map source) {
  final result = <String, dynamic>{};
  for (final entry in source.entries) {
    final key = entry.key is String ? entry.key as String : entry.key.toString();
    if (entry.value is Map) {
      result[key] = _deepCopy(Map<String, dynamic>.from(entry.value as Map));
    } else if (entry.value is List) {
      result[key] = (entry.value as List)
          .map((e) =>
              e is Map ? _deepCopy(Map<String, dynamic>.from(e)) : e)
          .toList();
    } else {
      result[key] = entry.value;
    }
  }
  return result;
}
