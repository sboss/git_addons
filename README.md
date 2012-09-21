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


## macosx_installer.pl

this script was designed to put in the bin directory, its contents, and put in the extras to the hooks directory.  very little error checking if any at all.  the script may/maynot work on other UN*X based systems (like linux).  it will not work at all on Windows.

## contributors
[sboss]( https://github.com/sboss "sboss" )  [![endorse](http://api.coderwall.com/sboss/endorsecount.png)](http://coderwall.com/sboss)
