-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "csv",
      "dockerfile",
      "go",
      "html",
      "http",
      "hyprlang",
      "javascript",
      "json",
      "jsonc",
      "lua",
      "make",
      "passwd",
      "powershell",
      "prisma",
      "rust",
      "sql",
      "toml",
      "typescript",
      "vim",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
