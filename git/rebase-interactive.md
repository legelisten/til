## Rebase interactive aka rebase -i

This is really useful command you shouldn't be afraid of.

### When to use it

* in feature branch you have a lot of small meanless commits;
* you are going to merge this branch into master.

### Why use it

* instead of just squashing everything to one big commit, you can create as many small commits easy to follow as you want. Everything can be changed there.

### How to use it

just try it in your branch: `git rebase -i master`
