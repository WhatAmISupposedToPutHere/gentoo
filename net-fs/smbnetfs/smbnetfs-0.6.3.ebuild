# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit readme.gentoo-r1

DESCRIPTION="FUSE filesystem for SMB shares"
HOMEPAGE="https://sourceforge.net/projects/smbnetfs"
SRC_URI="https://downloads.sourceforge.net/project/${PN}/${PN}/SMBNetFS-${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-linux"
IUSE="keyring"

RDEPEND=">=sys-fs/fuse-2.3:0=
	>=net-fs/samba-4.2
	>=dev-libs/glib-2.30
	keyring? ( app-crypt/libsecret )"

DEPEND="${RDEPEND}
	virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}"/${PN}-0.6.1-docdir.patch
)

DISABLE_AUTOFORMATTING=yes
DOC_CONTENTS="
For quick usage, exec:
'modprobe fuse'
'smbnetfs -oallow_other /mnt/samba'
"

src_configure() {
	econf $(use_with keyring libsecret)
}

src_install() {
	default

	readme.gentoo_create_doc
	dodoc AUTHORS ChangeLog
}
