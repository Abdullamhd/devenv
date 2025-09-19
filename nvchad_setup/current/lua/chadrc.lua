-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	hl_override = {
    CursorLine = {
      bg = "black2",
    },
    Comment = {
      italic = true,
    },
    Statement = {
      italic = true,
    },
    Define = {
      italic = true,
    },
    Conditional = {
      italic = true,
    },
    Repeat = {
      italic = true,
    },
    Label = {
      italic = true,
    },
    Exception = {
      italic = true,
    },
    Include = {
      italic = true,
    },
    Macro = {
      italic = true,
    },
    Keyword = {
      italic = true,
    },
    ["@keyword"] = {
      italic = true,
    },
    ["@keyword.function"] = {
      italic = true,
    },
    ["@keyword.return"] = {
      italic = true,
    },
    ["@keyword.operator"] = {
      italic = true,
    },
    Structure = {
      italic = true,
    },
    ["@structure"] = {
      italic = true,
    },
    -- NeoTree
    NeoTreeCursorLine = { bg = "grey" },
	},
}

M.ui = {
  nvdash = {
    load_on_startup = true,
  }
}

return M
