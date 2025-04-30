-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "pyright",
        "rust-analyzer",
        "svelte-language-server",
        "typescript-language-server",

        -- Linters
        "eslint_d",

        -- install formatters
        "stylua",
        "black",
        "prettier",

        -- install debuggers
        "codelldb",
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
      ui = {
        border = "rounder",
        backage_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
