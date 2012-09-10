#!perl
#
#|=1;
#
#
use Getopt::Long;
#
my $addonsdir='';
my $repodir  ='';
#
GetOptions( "addons=s" =>\$addonsdir, "repodir|repo|dir=s" =>\$repodir );
#
#
# START SAFETY CHECKS
if ( length( $addonsdir )<1 || length( $repodir)<1 )
	{
	print "ERROR not enough parameters.\n";
	exit 1;
	}
if ( ! -d $addonsdir || ! -d "$addonsdir/bin" || ! -d "$addonsdir/hooks" )
	{
	print "ERROR the addons directory is not valid\n";
	exit 1;
	}
if ( ! -d $repodir || ! -d "$repodir/.git" )
	{
	print "ERROR the git repo directory is not valid\n";
	exit 1;
	}
#
#
# START MAIN
if ( ! -d "$repodir/.git/bin" )
	{
	mkdir "$repodir/.git/bin";
	}
my $CMD = sprintf "ln -s $addonsdir/bin/git* $repodir/.git/bin/";
system `$CMD`;
$CMD = sprintf "ln -s $addonsdir/hooks/post* $repodir/.git/hooks/";
system `$CMD`;
