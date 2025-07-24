# CSV to MD format

https://www.vimgolf.com/challenges/6030936d3f9325000c6aa0aa

To convert a CSV list to Markdown list

## 59 keystrokes

```
:g/^/m0<CR>:sor/,/<CR>qq10i <Esc>hr-+q7@q--qqYP<<wdf,3-q2@q:%s/,.*<CR>ZZ
```

takeaways:

- `:g/^/m0<CR>` to reverse line order, see `:help move`

## 40 keystrokes

```
O<C-P><CR><C-N><C-N><CR>v<C-N><Esc>H<C-V>GI- <Esc>j*qqY#pf,D8I <Esc><C-O>dd$q7@qZZ
```

takeaways:

- `<C-N>` and `<C-P>`for auto-completion
