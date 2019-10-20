/** Hyper.js configuration */
module.exports = {
  config: {
    updateChannel: "canary",
    fontSize: 12,
    fontWeight: "normal",
    cursorShape: "UNDERLINE",
    cursorBlink: true,
    showHamburgerMenu: "true",
    showWindowControls: "true",
    padding: "1px",
    copyOnSelect: true,
    fontFamily: '"Fira Code", monospace',
    hyperStatusLine: {
      dirtyColor: "salmon"
    }
  },

  plugins: ["hyperocean", "hypercwd"],

  localPlugins: [],

  keymaps: {}
};
