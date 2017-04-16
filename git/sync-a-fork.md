# How to sync a fored repo?

If a repo is updated by its owner after you have forked it,
how to sync the forked repo?
Please follow the steps below:

```
$ git remove -v
origin    https://github.com/feici02/python-jumpstart-course-demos.git (fetch)
origin    https://github.com/feici02/python-jumpstart-course-demos.git (push)
upstream    https://github.com/mikeckennedy/python-jumpstart-course-demos.git (fetch)
upstream    https://github.com/mikeckennedy/python-jumpstart-course-demos.git (push)

# Commits to master will be stored in a local branch: upstream/master
# after following command
$ git fetch upstream

# change to the local master branch
# the updates will be merged into this branch
$ git checkout master

$ git merge upstream/master

# delete the branch which has been merged already
$ git branch -d upstream/master
```

