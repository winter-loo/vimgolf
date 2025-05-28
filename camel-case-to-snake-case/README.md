# VimGolf

## [Change class fields from camel case to snake case](https://www.vimgolf.com/challenges/9v0067056336000000000514)

```
:%s/\u.*:/_\L&<CR>fdi_<Esc>ZZ
```

learnt:

`\l`: match lowercase character
`\u`: match uppercase character
`\L`: Start lowercasing all characters from this point onward.
`&`: Insert the entire match

```
:help s/\L
:help s/\&
```

### advanced regexp

```
:%s#\l\@<=\u#_\l&<CR>&ZZ
```

Normally, we want to match a lowercase character followed by an uppercase character,
i.e., `\l\u`. For example, `abcDef` would match `cD` at the start position of `c` and
the replace patter `_\l&` would replace `abcDef` with `ab_cdef`.

`\@<=` is a **positive lookbehind**. It says:

> At the current cursor position, check if the text immediately before here matches
> this pattern. If it does, allow the match to proceed; if not, fail. But do not
> consume any characters—stay at the same spot.”

So, `\l\@<=\u` matches `abcDef` at the start position of `D`. Here's the detail:
at the position of `D`, the vim scanner looks behind one character at current
position finding that it matches a lowercase character and character at current
position also matches an uppercase character.

`_\l&` replaces `abcDef` with `abc_def`. See help:

```
:help s/\l
:help \@<=
```

### minimum keystrokes

```
:%s/\u.*:/_\l&<CR>&ZZ
```
