# [Powerful Registers](https://www.vimgolf.com/challenges/9v0066f4e39400000000040b)

## keystrokes

```
qqyeA <C-R>=len('<C-R>0')<CR><Esc>+q15@qZZ
```

Wow! `<C-R>0` interesting! I can insert content at a register when I am at the insert mode!


```
qqyeA <C-R>=len(@0)<CR><Esc>+@qq@qZZ
```

Wow! I can put `@0` as an argument to a fucntion!
