config.load_autoconfig(False)
# c.colors.tab
# c.colors.statusbar
# Media
c.content.media.audio_capture = True
c.content.media.video_capture = True
c.content.desktop_capture = True
c.content.javascript.enabled = True
c.tabs.position = 'left'
c.fonts.default_size = '8pt'

# Key-remapping
c.bindings.key_mappings = {"<Ctrl-G>": "<Escape>"}
c.url.start_pages = 'https://perplexity.ai'
c.url.default_page = 'https://perplexity.ai'
c.url.searchengines = {
  'DEFAULT': 'https://perplexity.ai?q={}',
  'a': 'https://amazon.co.jp/s?k={}',
  'g': 'https://google.com/search?q={}',
  'r': 'https://reddit.com/search/?q={}',
  'c': 'https://chat.openai.com/?q={}',
  'm': 'https://google.com/maps/search/{}',
  'yt': 'https://youtube.com/results?search_query={}',
  'dr': 'https://drive.google.com/drive/search?q={}',
  'tw': 'https://x.com/search?q={}',
  'wt': 'https://en.wiktionary.org/wiki/{}',
  'wk': 'https://en.wikipedia.org/wiki/{}',
  'gh': 'https://github.com/search?q={}',
  'gl': 'https://gitlab.com/search?search={}',
  'sc': 'https://scholar.google.com/scholar?q={}',
  # 'gm': 'https://www.google.com/search?q=site:gemini.google.com+{}',
  'cl': 'https://claude.ai/new?q={}',
  'aur': 'https://aur.archlinux.org/packages?K={}',
  'rae': 'https://dle.rae.es/{}',
  'per': 'https://perplexity.ai/search?q={}',
  'ytm': 'https://music.youtube.com/search?q={}',
  'esja': 'https://kotobank.jp/esjaword/{}'
}

def map(key, command):
    config.unbind(key)
    config.bind(key, command)

map('j', 'scroll down')
map('k', 'scroll up')
map('h', 'scroll left')
map('l', 'scroll right')
# map('H', 'tab-prev')
# map('L', 'tab-next')

# bg-color of the tab bar 
config.set('colors.tabs.bar.bg', '#1e1e1e')
config.set('colors.webpage.darkmode.enabled', True)

## Non-selected
config.set('colors.tabs.even.bg', '#222222')
config.set('colors.tabs.odd.bg', '#444444')
config.set('colors.tabs.even.fg', '#aaaaaa')
config.set('colors.tabs.odd.fg', '#aaaaaa')

## Selected
config.set('colors.tabs.selected.even.bg', '#aaaaaa')
config.set('colors.tabs.selected.odd.bg', '#aaaaaa')
config.set('colors.tabs.selected.even.fg', '#111111')
config.set('colors.tabs.selected.odd.fg', '#111111')

## Tab box 
c.tabs.padding = {'top': 6, 'bottom': 6, 'left': 4, 'right': 4 }
