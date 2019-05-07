// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: "canary",
    fontSize: 12,
    fontFamily:
      'Roboto Mono for Powerline, "Inconsolata for Powerline", monospace',
    fontWeight: "normal",
    cursorShape: "UNDERLINE",
    cursorBlink: true,
    showHamburgerMenu: "true",
    showWindowControls: "true",
    padding: "2.5px",
    shell: "/usr/bin/zsh",
    wickedBorder: true,
    wickedBorderColor: "#fff",
    copyOnSelect: true
  },

  plugins: ["hyperterm-cobalt2-theme"],

  localPlugins: [],

  keymaps: {}
};
