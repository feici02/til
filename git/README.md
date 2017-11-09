# Reference

1. [Offical Site](https://git-scm.com/)
1. [GitHub Guides](https://guides.github.com/)
1. [GitHub On Demand Training](https://services.github.com/on-demand/)
1. [hub](https://hub.github.com/) makes git better with GitHub
1. [Git Tutorials by Atlassian](https://www.atlassian.com/git/tutorials)
1. [Try Git](https://try.github.io/levels/1/challenges/1)

## git stash
```
# create a new branch called "contact-form"
$ git branch contact-form

# check the branch
# you are still on the master branch
$ git branch -v

# switch to the new branch
$ git checkout contact-form

# but if you have un-committed changes,
# above command will fail.

# save your changes temporarily
$ git stash 

# now you can switch to the new branch
# and start to work on the new feature
$ git checkout contact-form

# when you finish your work on that branch
# you can continue your work
$ git stash pop
```

## git fetch vs. git pull
```
# Before integrating these changes into your local working copy,
# you might first want to inspect them.
$ git fetch origin

# shows you the commits that happened recently on
# the "master" branch of the remote called "origin".
$ git log origin/master

# If you decide you want to integrate these changes into your working copy,
# the "git pull" command is what you need.
# fetch + merge
$ git pull
```
