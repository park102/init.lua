local function autosave()
  vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
    callback = function()
      if #vim.api.nvim_buf_get_name(0) ~= 0 and vim.bo.buflisted and vim.g.autosave then
        vim.cmd "silent w"

        -- print nice colored msg
        vim.api.nvim_echo(
          { { "󰄳", "LazyProgressDone" }, { " file autosaved at " .. os.date "%I:%M %p" } },
          false,
          {}
        )

      end
    end,
  })
end

local create_cmd = vim.api.nvim_create_user_command

create_cmd("AsToggle", function()
  vim.g.autosave = not vim.g.autosave

  if vim.g.autosave then
    autosave()
    vim.api.nvim_echo({ { "󰆓 ", "LazyProgressDone" }, { "autosave enabled!" } }, false, {})
  else
    vim.api.nvim_echo({ { "󰚌 ", "LazyNoCond" }, { "autosave disabled" } }, false, {})
  end

end, {})

