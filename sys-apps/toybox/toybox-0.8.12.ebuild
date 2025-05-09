# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multiprocessing savedconfig toolchain-funcs

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/landley/toybox.git"
else
	SRC_URI="https://landley.net/code/toybox/downloads/${P}.tar.gz"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

DESCRIPTION="Common linux commands in a multicall binary"
HOMEPAGE="https://landley.net/code/toybox/"

LICENSE="0BSD"
SLOT="0"

DEPEND="virtual/libcrypt:="
RDEPEND="${DEPEND}"

src_prepare() {
	default
	restore_config .config
}

src_configure() {
	tc-export CC STRIP
	export HOSTCC="$(tc-getBUILD_CC)"
	# Respect CFLAGS
	export OPTIMIZE="${CFLAGS}"

	if [[ -f .config ]]; then
		yes "" | emake -j1 oldconfig > /dev/null
		return 0
	else
		einfo "Could not locate user configfile, so we will save a default one"
		emake -j1 defconfig > /dev/null
	fi
}

src_compile() {
	unset CROSS_COMPILE
	export CPUS=$(makeopts_jobs)
	emake V=1 NOSTRIP=1
}

src_test() {
	emake V=1 tests
}

src_install() {
	save_config .config
	dobin toybox
}
