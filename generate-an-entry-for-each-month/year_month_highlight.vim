" date_highlight.vim
" Vim plugin for highlighting year, month, and day in different date formats
" 
" How to use it?
" :source ./year_month_highlight.vim
" :MyHighlight

" Define highlight groups
function! s:SetupHighlights()
  " Clear any existing highlights with the same name
  silent! highlight clear DateYear2016
  silent! highlight clear DateYear2017
  silent! highlight clear DateYear2018
  silent! highlight clear DateYear2019
  silent! highlight clear DateMonth01
  silent! highlight clear DateMonth02
  silent! highlight clear DateMonth03
  silent! highlight clear DateMonth04
  silent! highlight clear DateMonth05
  silent! highlight clear DateMonth06
  silent! highlight clear DateMonth07
  silent! highlight clear DateMonth08
  silent! highlight clear DateMonth09
  silent! highlight clear DateMonth10
  silent! highlight clear DateMonth11
  silent! highlight clear DateMonth12
  
  " Create highlight groups with distinct colors
  " Highly distinct colors for years - with both GUI and terminal colors
  highlight DateYear2016 guifg=#F1FA8C ctermfg=228 gui=bold cterm=bold " Yellow
  highlight DateYear2017 guifg=#50FA7B ctermfg=84 gui=bold cterm=bold " Bright green
  highlight DateYear2018 guifg=#BD93F9 ctermfg=141 gui=bold cterm=bold " Purple
  highlight DateYear2019 guifg=#FF5555 ctermfg=203 gui=bold cterm=bold " Bright red
  
  " Month colors using Nord palette - with both GUI and terminal colors
  highlight DateMonth01 guifg=#BF616A ctermfg=131 gui=bold cterm=bold " Nord11 - Aurora (red)
  highlight DateMonth02 guifg=#D08770 ctermfg=173 gui=bold cterm=bold " Nord12 - Aurora (orange)
  highlight DateMonth03 guifg=#EBCB8B ctermfg=222 gui=bold cterm=bold " Nord13 - Aurora (yellow)
  highlight DateMonth04 guifg=#A3BE8C ctermfg=144 gui=bold cterm=bold " Nord14 - Aurora (green)
  highlight DateMonth05 guifg=#B48EAD ctermfg=139 gui=bold cterm=bold " Nord15 - Aurora (purple)
  highlight DateMonth06 guifg=#8FBCBB ctermfg=109 gui=bold cterm=bold " Nord7 - Frost
  highlight DateMonth07 guifg=#88C0D0 ctermfg=110 gui=bold cterm=bold " Nord8 - Frost
  highlight DateMonth08 guifg=#81A1C1 ctermfg=109 gui=bold cterm=bold " Nord9 - Frost
  highlight DateMonth09 guifg=#5E81AC ctermfg=67 gui=bold cterm=bold " Nord10 - Frost
  highlight DateMonth10 guifg=#BF616A ctermfg=131 gui=bold cterm=bold " Nord11 - Aurora (red)
  highlight DateMonth11 guifg=#D08770 ctermfg=173 gui=bold cterm=bold " Nord12 - Aurora (orange)
  highlight DateMonth12 guifg=#EBCB8B ctermfg=222 gui=bold cterm=bold " Nord13 - Aurora (yellow)
endfunction

" Function to add matches for date components
function! s:HighlightDates()
  " Clear existing matches for this buffer
  call clearmatches()
  
  " Year patterns - match the year part in YYYY-MM format
  call matchadd('DateYear2016', '\<2016\>-\@=')
  call matchadd('DateYear2017', '\<2017\>-\@=')
  call matchadd('DateYear2018', '\<2018\>-\@=')
  call matchadd('DateYear2019', '\<2019\>-\@=')
  
  " Month patterns - match the month part in YYYY-MM format
  call matchadd('DateMonth01', '-\@<=01\>')
  call matchadd('DateMonth02', '-\@<=02\>')
  call matchadd('DateMonth03', '-\@<=03\>')
  call matchadd('DateMonth04', '-\@<=04\>')
  call matchadd('DateMonth05', '-\@<=05\>')
  call matchadd('DateMonth06', '-\@<=06\>')
  call matchadd('DateMonth07', '-\@<=07\>')
  call matchadd('DateMonth08', '-\@<=08\>')
  call matchadd('DateMonth09', '-\@<=09\>')
  call matchadd('DateMonth10', '-\@<=10\>')
  call matchadd('DateMonth11', '-\@<=11\>')
  call matchadd('DateMonth12', '-\@<=12\>')
endfunction

" Function to manually apply highlighting
function! YearMonthHighlight(...)
  let verbose = a:0 > 0 ? a:1 : 0
  
  if verbose
    echo "Setting up highlight groups..."
  endif
  call s:SetupHighlights()
  
  if verbose
    echo "Applying highlights to current buffer..."
  endif
  call s:HighlightDates()
  
  if verbose
    echo "Date highlighting applied successfully!"
    echo "Look for dates in format YYYY-MM where:"
    echo "  - Years 2016-2019 will be highlighted in distinct colors"
    echo "  - Months 01-12 will be highlighted in distinct colors"
  endif
endfunction

" Create commands for easier access
command! MyHighlight call YearMonthHighlight(0)
command! MyHighlightVerbose call YearMonthHighlight(1)

" Auto-command to apply highlighting when opening certain file types (optional)
" Uncomment the following lines to enable automatic highlighting
" augroup YearMonthHighlightAuto
"   autocmd!
"   autocmd BufReadPost,BufNewFile *.txt,*.md,*.csv call YearMonthHighlight(0)
" augroup END
