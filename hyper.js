module.exports = {
  config: {
    verminal: {
      fontFamily: '"IBM Plex Mono"',
      fontSize: 13,
      cursorColor: '#ffffff',
    },
    selectionColor: 'rgba(227,227,227,0.3)',
    shell: '/usr/local/bin/zsh',
    env: {},
    termCSS: 'span { background-color: transparent !important; }',
  },
  plugins: ["hyper-final-say", "hyper-search", "verminal"],
};
