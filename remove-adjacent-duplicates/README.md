The minimum keystrokes solution is all about 'the power of regex'. You can do the
same in vscode.


# solution

```txt
:s/\v(.) \1@=//g<CR>ZZ
```

explain:

- `\v` enables 'very magic' mode, i.e., you need not use backslash to escape '(', ')', '+', etc.
- You can even use back reference `\1` in the search pattern
- '@=' is '\@=' in not 'very magic' mode, see `:help \@=`.
  `\@=` is the positive lookahead atom: it asserts that the pattern immediately
  to its left matches at the current position, without consuming any characters.
