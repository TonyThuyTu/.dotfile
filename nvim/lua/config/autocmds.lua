-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.keymap.set("n", "<F5>", function()
      vim.cmd("w")

      local file = vim.fn.expand("%:p") -- full path
      local dir = vim.fn.expand("%:p:h") -- file directory
      local exe = vim.fn.expand("%:r") .. ".exe"

      vim.cmd(
        'botright split | terminal cd /d "'
          .. dir
          .. '" && gcc -Wall -Wextra -std=c11 "'
          .. file
          .. '" -o "'
          .. exe
          .. '" && "'
          .. exe
          .. '"'
      )
    end, { buffer = true, desc = "Compile & Run C (F5)" })
  end,
})
