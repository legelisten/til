It will be much esasier to use NerdTree with this bindings (in .vimrc):

#### 1. Ctrl+[hjkl] to switch between NerdTree and opened files
```
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
```
#### 2. Find opened file in the tree
```
nmap ,n :NERDTreeFind<CR>
```
#### 3. Toggle NerdTree
```
nmap ,m :NERDTreeToggle<CR>
```
