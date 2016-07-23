## Very beginning

1. Open editor: `vim`
2. Open file using NerdTree plugin or with [fuzzy open plugin](https://github.com/ctrlpvim/ctrlp.vim) – call it with `Ctrl+p` (use `Ctrl+v` to open in new split, `Ctrl+t` for new tab)
3. Open another file with split right: `s` with cursor in NerdTree
4. To switch between tabs use `g``t` and `g``T`
5. Use this mapping for the NerdTree:
```
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
```
