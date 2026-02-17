---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      -- 🔹 đảm bảo KHÔNG auto bật inlay hint
      opts.autocmds = opts.autocmds or {}
      opts.autocmds.disable_inlay_hint_auto = {
        {
          event = "LspAttach",
          desc = "Disable inlay hints by default",
          callback = function(args)
            if vim.lsp.inlay_hint then vim.lsp.inlay_hint.enable(false, { bufnr = args.buf }) end
          end,
        },
      }

      -- 🔹 keymap toggle: <leader>uh / <leader>uH
      opts.mappings = opts.mappings or {}
      opts.mappings.n = opts.mappings.n or {}

      opts.mappings.n["<leader>uh"] = {
        function()
          local bufnr = vim.api.nvim_get_current_buf()
          local enabled = vim.lsp.inlay_hint.is_enabled { bufnr = bufnr }
          vim.lsp.inlay_hint.enable(not enabled, { bufnr = bufnr })
        end,
        desc = "Toggle inlay hints",
      }

      opts.mappings.n["<leader>uH"] = opts.mappings.n["<leader>uh"]

      -- 🎨 màu giống Tree-sitter
      opts.autocmds.inlay_hint_colors = {
        {
          event = "ColorScheme",
          desc = "Inlay hint treesitter color",
          callback = function()
            vim.api.nvim_set_hl(0, "LspInlayHint", {
              link = "@type",
            })
          end,
        },
      }
    end,
  },
}
