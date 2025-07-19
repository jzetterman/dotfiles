return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      'folke/lazydev.nvim', -- Optional: for Lua development
    },
    opts = {
      -- Snippet Integration
      snippets = {
        enabled = true,
        expand = function(snippet)
          require('luasnip').lsp_expand(snippet.body)
        end,
        jump = function(direction)
          return require('luasnip').jumpable(direction) and require('luasnip').jump(direction)
        end,
      },
      -- Appearance: Mimic nvim-cmp's UI
      appearance = {
        use_nvim_cmp_as_default = false, -- Use blink.cmp's native styling
        nerd_font_variant = 'mono', -- Align icons properly
        kind_icons = vim.tbl_extend('force', {}, {
          Class = '',
          Function = '󰊕',
          Method = '󰆧',
          Variable = '󰀫',
          -- Add more from LazyVim's icons or your preference
        }),
      },
      -- Completion Settings
      completion = {
        enabled = true,
        keyword_length = 2, -- Trigger after 2 characters
        range = 'before_and_after', -- Match text before and after cursor
        trigger = {
          keyword = true, -- Trigger on alphanumeric, -, _
          character = true, -- Trigger on LSP trigger characters (e.g., .)
        },
        list = {
          preselect = true, -- Preselect first item
          auto_insert = function()
            return vim.bo.filetype ~= 'markdown'
          end, -- Avoid auto-insert in markdown
        },
        accept = {
          auto_brackets = {
            enabled = true, -- Auto-add brackets for functions/methods
            kinds = { 'Function', 'Method' }, -- Add for these LSP kinds
          },
        },
        menu = {
          draw = {
            columns = {
              { 'label', 'label_description', gap = 1 },
              { 'kind_icon', 'kind' },
            },
            treesitter = { 'lsp' }, -- Use Treesitter for highlighting
          },
        },
      },
      -- Documentation Window
      documentation = {
        enabled = true,
        auto_show = true,
        auto_show_delay_ms = 200,
        border = 'rounded', -- Customize border
      },
      -- Ghost Text (inline preview)
      ghost_text = {
        enabled = true,
      },
      -- Experimental Signature Help
      signature = {
        enabled = true, -- Show function signatures
        auto_show = true,
        auto_show_delay_ms = 200,
      },
      -- Sources
      sources = {
        enabled_providers = {
          lsp = { name = 'LSP', score_offset = 10 },
          snippets = { name = 'Snippets', score_offset = 5 },
          buffer = { name = 'Buffer', score_offset = 0 },
          path = { name = 'Path', score_offset = 0 },
          lazydev = { name = 'LazyDev', module = 'lazydev.integrations.blink', score_offset = 100 }, -- For Lua
        },
        default = { 'lsp', 'snippets', 'buffer', 'path', 'lazydev' },
      },
      -- Keybindings
      keymap = {
        preset = 'enter', -- Use enter-based preset
        ['<C-Space>'] = { 'show' },
        ['<C-e>'] = { 'hide' },
        ['<CR>'] = { 'select_and_accept' },
        ['<Tab>'] = { 'select_next', 'snippet_forward' },
        ['<S-Tab>'] = { 'select_prev', 'snippet_backward' },
        ['<C-b>'] = { 'scroll_documentation_up' },
        ['<C-f>'] = { 'scroll_documentation_down' },
      },
      -- Disable Cmdline Completion (optional, as cmdline is limited)
      cmdline = {
        enabled = false,
      },
    },
  },
}
