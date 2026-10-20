EAPI=8

DESCRIPTION="A lightweight system information tool written in Bash"
HOMEPAGE="https://github.com/ximimoments/katifetch"
SRC_URI="https://github.com/ximimoments/katifetch/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

RDEPEND="
    app-shells/bash
    sys-apps/coreutils
    sys-apps/sed
    sys-apps/grep
"

src_install() {
    # Instala katifetch.sh renombrándolo a katifetch y dándole permisos ejecutables
    newbin katifetch.sh katifetch
    einstalldocs
}
