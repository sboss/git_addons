# README for git addons

## bin (directory)

these files copy to ${gitrepo}/.git/bin.  the bin directory is not part of the git repo normally, so you will have to add it manually.

* git\_push\_all\_v1

  this script will push to all defined remote repos the updates. there is no error checking nor checking of networks or anything.  good if you have a good network connection at all times.

## hooks (directory)

* post-commit
