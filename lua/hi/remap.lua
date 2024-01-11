vim.keymap.set("n","<leader>j","<cmd>NvimTreeToggle<CR>")
vim.keymap.set("i","<C-c>","<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ce", function() require("scissors").editSnippet() end)
vim.keymap.set({ "n", "x" }, "<leader>ca", function() require("scissors").addNewSnippet() end)

local wk = require("which-key")
wk.register({
  ["<leader>r"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] , "replace" },
  ["<leader>w"] = { "<cmd>wall<CR>", 'write all' }
} ,{mode = "n"})
