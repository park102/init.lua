local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require("which-key")
wk.register({
  ["<leader>k"] = { mark.add_file, "harpoon add file" },
  ["<leader>l"] = { ui.toggle_quick_menu, "harpoon quick menu" },
  ["<leader>s"] = { ui.nav_next, "harpoon next" },
  ["<leader>a"] = { ui.nav_prev, "harpoon prev" },
} ,{mode = "n"})
