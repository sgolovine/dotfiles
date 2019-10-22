/** Hyper.js configuration */
module.exports = {
  config: {
    updateChannel: "canary",
    fontSize: 12.5,
    fontWeight: "normal",
    cursorShape: "UNDERLINE",
    cursorBlink: true,
    showHamburgerMenu: "true",
    showWindowControls: "true",
    padding: "1px",
    copyOnSelect: true,
    fontFamily: '"Office Code Pro D", monospace',
    hyperStatusLine: {
      dirtyColor: "salmon"
    }
  },

  plugins: ["hyperocean", "hypercwd"],

  localPlugins: [],

  keymaps: {}
};
