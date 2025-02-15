return {
  {
    'saghen/blink.cmp',
    event = { 'lspAttach' },
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    version = '*',

    opts = {
      keymap = { preset = 'default' },
      appearance = {
	use_nvim_cmp_as_default = true,
	nerd_font_variant = 'mono'
      },
    },
    documentation = { auto_show = true, auto_show_delay_ms = 200 },
    snippets = { preset = 'default' },
  }
}
