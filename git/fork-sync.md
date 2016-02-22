## How to syncronise fork with master repo

* Add upstream:

  `git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git`
    
* Fetch upstream from your fork:

  `git fetch upstream`
    
* Merge your form with upstream:

  `git merge upstream/master`
    
## If your fork went out of control:

Make it the same as base repo with `git reset --hard upstream/master`
