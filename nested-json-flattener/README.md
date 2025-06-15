# [Nested JSON Flattener](https://www.vimgolf.com/challenges/9v0067255515000000000597)


## keystrokes

```
:%s/"\|,//g|%s/: /=<CR>qq?{<CR>hr.vbd+h<C-V>]}klp]}ddn.@qq@q.G.={ZZ

```

Note:

* Only works in vim not neovim
  In vim, 'dd' the last line moves the cursor to the previous line at the first
  non-blank column, but at the first column in neovim.

Takeways:

* No need to press extra '/' at the end of regex
* Commands can be concatenated by '|'
* Use '.' to repeat the last change, here 'deletion'
* Use '={motion}' to indent lines
