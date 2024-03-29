local builtin = require('telescope.builtin')
local wk = require("which-key")
wk.register({
  ["<leader>f"] = { name = "+find" },
  ["<leader>ff"] = { builtin.find_files,"Find File"},
  ["<leader>fc"] = {builtin.git_commits,"Find commits"},
  ["<leader>fb"] = {builtin.git_branches,"Find branches"},
  ["<leader>ft"] = {"<cmd>TodoTelescope<CR>", "find Todos"},
  ["<leader>fg"] = {builtin.live_grep,"live grep"}
} ,{mode = "n"})
