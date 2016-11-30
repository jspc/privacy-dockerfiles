#!/bin/sh
#
# Kick off tor, start privoxy talking to it
#
# It should be noted that running two processes in a single container
# Doesn't really reflect the philosophy of docker containers. I, though,
# don't want to pass privileged/ net=host type args to docker, nor do I
# want to hack around getting docker listing on public ports.
#
# Thus: this approach

set -a
set -x
set -e

/usr/bin/tor &
/usr/sbin/privoxy --no-daemon /etc/privoxy/config
