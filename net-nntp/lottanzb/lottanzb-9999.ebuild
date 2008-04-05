# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils bzr

DESCRIPTION="LottaNZB is a pyGTK front-end for HellaNZB"
HOMEPAGE="http://lottanzb.org"

EBZR_BRANCH="main"
EBZR_REPO_URI="http://bazaar.launchpad.net/~lottanzb/lottanzb/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="remote"

DEPEND=">=dev-lang/python-2.4
	dev-python/pygtk"
RDEPEND="${DEPEND}
	!remote? ( net-nntp/hellanzb )"

