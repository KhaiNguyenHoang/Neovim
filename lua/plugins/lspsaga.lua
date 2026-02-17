---@type LazySpec
return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      ui = {
        border = "rounded",
        title = true,
        winblend = 0,
        expand = "",
        collapse = "",
        code_action = "💡",
      },

      hover = {
        max_width = 0.6,
        max_height = 0.5,
        open_link = "gx",
        open_browser = "xdg-open",
      },

      diagnostic = {
        show_code_action = true,
        show_source = true,
        jump_num_shortcut = true,
        max_width = 0.7,
        max_height = 0.6,
        text_hl_follow = true,
        border_follow = true,
        keys = {
          exec_action = "o",
          quit = "q",
          go_action = "g",
        },
      },

      finder = {
        max_height = 0.5,
        min_width = 30,
        force_max_height = false,
        keys = {
          jump_to = "p",
          edit = { "o", "<CR>" },
          vsplit = "s",
          split = "i",
          tabe = "t",
          quit = { "q", "<ESC>" },
          close_in_preview = "<ESC>",
        },
      },

      definition = {
        edit = "<CR>",
        vsplit = "v",
        split = "s",
        tabe = "t",
        quit = "q",
        close = "<ESC>",
      },

      rename = {
        quit = "<ESC>",
        exec = "<CR>",
        in_select = true,
      },

      outline = {
        win_position = "right",
        win_width = 30,
        auto_preview = true,
        detail = true,
      },

      symbol_in_winbar = {
        enable = true,
        separator = "  ",
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
      },

      lightbulb = {
        enable = false, -- AstroNvim đã có
      },
    },
  },
}
