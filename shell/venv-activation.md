Add this to your `.bashrc` (`.zshrc`) file to have a handy shortcut for python venv activation:

```
pyactivate () {
     cd your-folder/name
     export PYTHONPATH=.
    source venv/bin/activate
}
```
