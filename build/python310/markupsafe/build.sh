#!/usr/bin/bash
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
# }}}
#
# Copyright 2022 OmniOS Community Edition (OmniOSce) Association.

. ../../../lib/build.sh

PKG=library/python-3/markupsafe-310
PROG=MarkupSafe
VER=2.1.0
SUMMARY="MarkupSafe - safely process strings for HTML/XML"
DESC="Safely add untrusted strings to HTML/XML markup"

. $SRCDIR/../common.sh

init
download_source pymodules/${PROG,,} $PROG $VER
patch_source
prep_build
python_build
make_package $SRCDIR/../common.mog
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
