-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--- CUSTOM MACROS ---
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:'," .. esc .. "p")
