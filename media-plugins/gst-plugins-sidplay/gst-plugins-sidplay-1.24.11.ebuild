# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
GST_ORG_MODULE=gst-plugins-ugly

inherit gstreamer-meson

DESCRIPTION="Sid decoder plugin for GStreamer"
KEYWORDS="~alpha amd64 ~arm64 ppc ~ppc64 ~sparc x86"

RDEPEND=">=media-libs/libsidplay-1.36.59-r1:1[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"

multilib_src_configure() {
	local emesonargs=(
		-Dgpl=enabled
	)

	gstreamer_multilib_src_configure
}
