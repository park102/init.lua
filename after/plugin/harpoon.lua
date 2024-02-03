local harpoon = require("harpoon")
local wk = require("which-key")

harpoon:setup()


wk.register({
  ["<leader>k"] = { function() harpoon:list():append() end, "harpoon add file" },
  ["<leader>l"] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "harpoon quick menu" },
  ["<leader>s"] = { function() harpoon:list():next() end, "harpoon next" },
  ["<leader>a"] = { function() harpoon:list():prev() end, "harpoon prev" },
} ,{mode = "n"})
