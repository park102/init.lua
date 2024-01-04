local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require("which-key")
wk.register({
  ["<leader>h"] = { name = "+harpoon" },
  ["<leader>ha"] = { mark.add_file, "add file" },
  ["<leader>hl"] = { ui.toggle_quick_menu, "quick menu" },
  ["<leader>s"] = { ui.nav_next, "harpoon next" },
  ["<leader>a"] = { ui.nav_prev, "harpoon prev" },
} ,{mode = "n"})
