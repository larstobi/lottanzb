# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils distutils gnome2 bzr

DESCRIPTION="LottaNZB is a pyGTK front-end for HellaNZB"
HOMEPAGE="http://lottanzb.org"
SRC_URI=""

EBZR_BRANCH="main"
EBZR_REPO_URI="http://bazaar.launchpad.net/~lottanzb/lottanzb/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="remote"

DEPEND=">=dev-lang/python-2.4
	dev-python/pygtk
	dev-python/elementtree"
RDEPEND="${DEPEND}
	dev-python/kiwi
	!remote? ( net-nntp/hellanzb )"

src_unpack() {
	bzr_src_unpack
}

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install --packaging-mode
}

pkg_postinst() {
	distutils_pkg_postinst
	gnome2_pkg_postinst
}

pkg_postrm() {
	distutils_pkg_postrm
	gnome2_pkg_postrm
}
