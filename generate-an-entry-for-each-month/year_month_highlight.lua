-- date_highlight.lua
-- Neovim plugin for highlighting year, month, and day in different date formats
-- 
-- How to use it?
-- :lua require('year_month_highlight').apply()

local M = {}

-- Define highlight groups
function M.setup_highlights()
  -- Create highlight groups with distinct colors
  -- Highly distinct colors for years
  vim.api.nvim_command('highlight DateYear2016 guifg=#F1FA8C gui=bold') -- Bright red
  vim.api.nvim_command('highlight DateYear2017 guifg=#50FA7B gui=bold') -- Bright green
  vim.api.nvim_command('highlight DateYear2018 guifg=#BD93F9 gui=bold') -- Purple
  vim.api.nvim_command('highlight DateYear2019 guifg=#FF5555 gui=bold') -- Yellow
  
  -- Month colors using Nord palette
  vim.api.nvim_command('highlight DateMonth01 guifg=#BF616A gui=bold') -- Nord11 - Aurora (red)
  vim.api.nvim_command('highlight DateMonth02 guifg=#D08770 gui=bold') -- Nord12 - Aurora (orange)
  vim.api.nvim_command('highlight DateMonth03 guifg=#EBCB8B gui=bold') -- Nord13 - Aurora (yellow)
  vim.api.nvim_command('highlight DateMonth04 guifg=#A3BE8C gui=bold') -- Nord14 - Aurora (green)
  vim.api.nvim_command('highlight DateMonth05 guifg=#B48EAD gui=bold') -- Nord15 - Aurora (purple)
  vim.api.nvim_command('highlight DateMonth06 guifg=#8FBCBB gui=bold') -- Nord7 - Frost
  vim.api.nvim_command('highlight DateMonth07 guifg=#88C0D0 gui=bold') -- Nord8 - Frost
  vim.api.nvim_command('highlight DateMonth08 guifg=#81A1C1 gui=bold') -- Nord9 - Frost
  vim.api.nvim_command('highlight DateMonth09 guifg=#5E81AC gui=bold') -- Nord10 - Frost
  vim.api.nvim_command('highlight DateMonth10 guifg=#BF616A gui=bold') -- Nord11 - Aurora (red)
  vim.api.nvim_command('highlight DateMonth11 guifg=#D08770 gui=bold') -- Nord12 - Aurora (orange)
  vim.api.nvim_command('highlight DateMonth12 guifg=#EBCB8B gui=bold') -- Nord13 - Aurora (yellow)
end

-- Function to add matches for date components
function M.highlight_dates(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  
  -- Clear existing matches for this buffer
  vim.fn.clearmatches()
  
  -- Year
  vim.fn.matchadd('DateYear2016', '2016-\\@=')
  vim.fn.matchadd('DateYear2017', '2017-\\@=')
  vim.fn.matchadd('DateYear2018', '2018-\\@=')
  vim.fn.matchadd('DateYear2019', '2019-\\@=')
  -- Month
  vim.fn.matchadd('DateMonth01', '01-\\@=')
  vim.fn.matchadd('DateMonth02', '02-\\@=')
  vim.fn.matchadd('DateMonth03', '03-\\@=')
  vim.fn.matchadd('DateMonth04', '04-\\@=')
  vim.fn.matchadd('DateMonth05', '05-\\@=')
  vim.fn.matchadd('DateMonth06', '06-\\@=')
  vim.fn.matchadd('DateMonth07', '07-\\@=')
  vim.fn.matchadd('DateMonth08', '08-\\@=')
  vim.fn.matchadd('DateMonth09', '09-\\@=')
  vim.fn.matchadd('DateMonth10', '10-\\@=')
  vim.fn.matchadd('DateMonth11', '11-\\@=')
  vim.fn.matchadd('DateMonth12', '12-\\@=')
end


-- Function to manually apply highlighting
function M.apply()
  M.setup_highlights()
  
  -- Apply to current buffer
  M.highlight_dates()
end

return M
