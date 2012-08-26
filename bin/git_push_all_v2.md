# git\_push\_all\_v2

## requirements

* perl (any modern version will suffice).
* Socket.pm (should come with any Perl install by default).
* Net::Ping.pm [\[OPTIONAL\]] (this gives extra level of testing).

## upgrades from v1

compares IP address from dns look up of time.apple.com to 0.us.pool.ntp.org AND time.apple.com to 2.us.pool.ntp.org to make sure that we arent getting the same results back.  if so, we are generally behind some sort of firewall/redirector.  lots of cafes redirect all dns queries to a single address in the cafe until you "register".  if we find that we are in that situation, we will not attempt to sync repos.

if Net::Ping is available, there is extra level of testing. it pings the hosts on the determined protocol port.

## notes

this script works best if used on a host that is always on a network.  there is only minimal checking.