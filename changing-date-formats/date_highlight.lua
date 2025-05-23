-- date_highlight.lua
-- Neovim plugin for highlighting year, month, and day in different date formats
-- 
-- How to use it?
-- :lua require('date_highlight').apply()

local M = {}

-- Define highlight groups
function M.setup_highlights()
  -- Create highlight groups with distinct colors
  vim.api.nvim_command('highlight DateYear guifg=#88CCEE gui=bold')
  vim.api.nvim_command('highlight DateMonth guifg=#CC6677 gui=bold')
  vim.api.nvim_command('highlight DateDay guifg=#DDCC77 gui=bold')
  
  -- Format indicator colors
  vim.api.nvim_command('highlight DateFormatYMD guifg=#44AA99 gui=italic')
  vim.api.nvim_command('highlight DateFormatMDY guifg=#AA44AA gui=italic')
  vim.api.nvim_command('highlight DateFormatDMY guifg=#AAAA44 gui=italic')
end

-- Function to add matches for date components
function M.highlight_dates(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  
  -- Clear existing matches for this buffer
  vim.fn.clearmatches()
  
  -- YMD format: (YMD): 2024/10/09
  -- Year
  vim.fn.matchadd('DateYear', '(YMD): \\zs\\d\\{4}\\ze/')
  -- Month
  vim.fn.matchadd('DateMonth', '(YMD): \\d\\{4}/\\zs\\d\\{2}\\ze/')
  -- Day
  vim.fn.matchadd('DateDay', '(YMD): \\d\\{4}/\\d\\{2}/\\zs\\d\\{2}\\ze')
  
  -- MDY format: (MDY): 12/12/2024
  -- Month
  vim.fn.matchadd('DateMonth', '(MDY): \\zs\\d\\{2}\\ze/')
  -- Day
  vim.fn.matchadd('DateDay', '(MDY): \\d\\{2}/\\zs\\d\\{2}\\ze/')
  -- Year
  vim.fn.matchadd('DateYear', '(MDY): \\d\\{2}/\\d\\{2}/\\zs\\d\\{4}\\ze')
  
  -- DMY format: (DMY): 09/10/2024
  -- Day
  vim.fn.matchadd('DateDay', '(DMY): \\zs\\d\\{2}\\ze/')
  -- Month
  vim.fn.matchadd('DateMonth', '(DMY): \\d\\{2}/\\zs\\d\\{2}\\ze/')
  -- Year
  vim.fn.matchadd('DateYear', '(DMY): \\d\\{2}/\\d\\{2}/\\zs\\d\\{4}\\ze')
  
  -- Format indicators with different colors
  vim.fn.matchadd('DateFormatYMD', '(YMD)')
  vim.fn.matchadd('DateFormatMDY', '(MDY)')
  vim.fn.matchadd('DateFormatDMY', '(DMY)')
end


-- Function to manually apply highlighting
function M.apply()
  M.setup_highlights()
  
  -- Apply to current buffer
  M.highlight_dates()
end

return M
