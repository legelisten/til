When rebasing you can face with double-resolving of every conflict you have.
First time while rebasing and second time with pull rebased branch. 

To avoid that just add 
```
[rerere]
    enabled = true
```

to you ```.gitconfig``` file
