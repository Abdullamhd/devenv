require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map(
  "n",
  "<leader>c",
  ":lua print(vim.inspect(vim.treesitter.get_captures_at_cursor(0))) <CR>",
  {
    desc = "Show treesitter capture group for textobject under cursor",
    nowait = true
  }
)
--    -- Toggle mouse
map("n", "<leader>m", ":ToggleMouse <CR>", { desc = "Toggle mouse", nowait = true } )
--    -- NeoTree
map("n", "<leader>r", ":Neotree reveal <CR>", { desc = "Reveal current file in file tree", nowait = true } )
