# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="LottaNZB is a pyGTK front-end for HellaNZB"
HOMEPAGE="http://lottanzb.org"
SRC_URI="http://lottanzb.org/releases/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="remote"

DEPEND=">=dev-lang/python-2.4
	dev-python/pygtk"
RDEPEND="${DEPEND}
	!remote? ( net-nntp/hellanzb )"

S="${WORKDIR}/${PN}"
