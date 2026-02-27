---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = {
      ensure_installed = {
        "taplo",
        "emmet-ls",
        "marksman",
        "yaml-language-server",

        "rust-analyzer",
        "stylua",

        "dotenv-linter",

        "local-lua-debugger-vscode",

        -- install any other package
        "tree-sitter-cli",
        "fish-lsp",
        "gh-actions-language-server",
      },
    },
  },
}
