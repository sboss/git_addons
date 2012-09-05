# README for git addons

## requirements

* perl (any modern version)


## bin (directory)

these files copy to ${gitrepo}/.git/bin.  the bin directory is not part of the git repo normally, so you will have to add it manually.

* git\_push\_all\_v1

  perl script
  
  this script will push to all defined remote repos the updates. there is no error checking nor checking of networks or anything.  good if you have a good network connection at all times.

* git\_push\_all\_v2

  perl script

  this script will push to all defined remote repos the updates. there is minimal error checking of networks (does a ping of remote host only).


## hooks (directory)

* post-commit
