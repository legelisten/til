Add this to .gitconfig:

```
[alias]
  # get current branch name
  branch-name = "!git rev-parse --abbrev-ref HEAD"
  # publish current branch to remote
  publish = "!git push -u origin $(git branch-name)"
  # force-push current branch to staging branch
  staging-push = "!git push origin $(git branch-name):staging --force"
  
  # to fix a small typo and force-push it
  # be careful with master branch here ;)
  comeon = "!git add . && git ci --amend && git push --force"

  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
  type = cat-file -t
  dump = cat-file -p
```
