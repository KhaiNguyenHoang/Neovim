---@type LazySpec
return {
  "j4flmao/sql-lens.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  ft = { "sql", "plpgsql", "mysql" },

  opts = {
    connections = {
      {
        name = "local-sqlserver",
        type = "sqlserver",
        host = "localhost",
        port = 1433,
        user = "sa",
        password = "Admin12345#",
        sqlcmd_args = { "-C" },
      },
      {
        name = "local-postgres",
        type = "postgres",
        host = "localhost",
        port = 5432,
        user = "postgres",
        password = "Admin12345#",
        sqlcmd_args = { "-C" },
      },
    },
  },
}
