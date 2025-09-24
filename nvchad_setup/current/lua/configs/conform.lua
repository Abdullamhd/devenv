local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff", "black", "isort" }, -- Use ruff first (fastest), fallback to black and isort
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
  },

  -- Enable format on save for Python files
  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end

    -- Only format Python files on save
    local filetype = vim.bo[bufnr].filetype
    if filetype == "python" then
      return {
        timeout_ms = 1000,
        lsp_fallback = true,
      }
    end
  end,

  -- Configure specific formatters
  formatters = {
    ruff = {
      command = "ruff",
      args = { "format", "--stdin-filename", "$FILENAME", "-" },
    },
    black = {
      command = "black",
      args = { "--quiet", "--stdin-filename", "$FILENAME", "-" },
    },
    isort = {
      command = "isort",
      args = { "--quiet", "--filename", "$FILENAME", "-" },
    },
  },
}

return options
