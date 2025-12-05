#!/bin/sh
# Run this to generate all the initial makefiles, etc.

test -n "$srcdir" || srcdir=$(dirname "$0")
test -n "$srcdir" || srcdir=.
(
  cd "$srcdir" &&
  touch config.rpath &&
  autoreconf -fiv -I /usr/share/gettext/m4
) || exit
test -n "$NOCONFIGURE" || "$srcdir/configure" "$@"
