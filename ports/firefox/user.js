// Outrun Electric — see ~/Documents/outrun-electric/ports/firefox/
// Lets Firefox read chrome/userContent.css (built-in pages recoloured).
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
// Blank tabs and the moment before a page paints: palette bg instead of grey.
user_pref("browser.display.background_color.dark", "#0c0a20");
