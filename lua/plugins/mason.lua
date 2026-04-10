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
        "roslyn",
        "rust-analyzer",
        "stylua",
        "dotenv-linter",
        "local-lua-debugger-vscode",
        "tree-sitter-cli",
        "fish-lsp",
        "gh-actions-language-server",
      },
    },
  },
}
