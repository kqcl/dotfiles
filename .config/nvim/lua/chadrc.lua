-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },

    NvDashAscii = {
      fg = "blue",
      bg = "none",
    },
    NvDashButtons = {
      bg = "none"
    }
  },
  nvdash = {
    load_on_startup = true,

    header = {
    "  ,-.       _,---._ __  / \\",
    " /  )    .-'       `./ /   \\",
    "(  (   ,'            `/    /|",
    " \\  `-\"             \\'\\   / |",
    "  `.              ,  \\ \\ /  |",
    "   /`.          ,'-`----Y   |",
    "  (            ;        |   '",
    "  |  ,-.    ,-'         |  /",
    "  |  | (   |            | /",
    "  )  |  \\  `.___________|/",
    "  `--'   `--'",
    },

    buttons = {
        { "  Find File", "Spc f f", "Telescope find_files" },
        { "⌨  Enter Terminal", "Spc t t", "Nvim integrated terminal"},
        { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
        { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
        { "  Bookmarks", "Spc m a", "Telescope marks" },
        { "  Themes", "Spc t h", "Telescope themes" },
        { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return M
