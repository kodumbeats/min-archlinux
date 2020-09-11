# Maintainer: kodumbeats <brandon.leckemby@gmail.com>

pkgname=min
pkgver=1.16.0
_commit=0096da38545f9828a256ca6872eb91246132a5c3
pkgrel=1
pkgdesc='A smarter, faster web browser'
arch=('any')
url='https://minbrowser.github.io/min'
license=('Apache')
depends=('electron')
makedepends=('git' 'npm')
source=("git+https://github.com/minbrowser/min.git#commit=${_commit}"
        'min.desktop'
        'min.js'
        'icon.patch')
sha256sums=('SKIP'
            'a779a8daff1d684779ebc6d13ea4c2f09e838df018de41fa19fa3f25aa12e32f'
            'c22324184b72b3fad5a0aadb4e18182414e0294c5596c26426adc204fd473258'
            '49c2ec849385eb365a947f9fc8cdeeac8dc8bb038fad3642b0ca0dbb79b10d09')

prepare() {
    cd ${pkgname}

    patch -Np1 -i "${srcdir}"/icon.patch
}

build() {
    cd ${pkgname}

    npm install
    npm run build
    rm -r node_modules

    npm install --production --no-optional
}

package() {
    cd ${pkgname}

    appdir=/usr/lib/${pkgname}

    install -dm755 "${pkgdir}"${appdir}
    cp -r * "${pkgdir}"${appdir}

    install -dm755 "${pkgdir}"/usr/share/icons/hicolor/256x256/apps
    mv icons/icon256.png \
        "${pkgdir}"/usr/share/icons/hicolor/256x256/apps/${pkgname}.png

    install -Dm755 "${srcdir}"/${pkgname}.js "${pkgdir}"/usr/bin/${pkgname}
    install -Dm644 "${srcdir}"/${pkgname}.desktop \
            "${pkgdir}"/usr/share/applications/${pkgname}.desktop

    # Clean up
    rm "${pkgdir}"${appdir}/dist/build.js
    rm -r "${pkgdir}"${appdir}/icons
    rm -r "${pkgdir}"${appdir}/localization
    rm -r "${pkgdir}"${appdir}/main
    rm -r "${pkgdir}"${appdir}/scripts
    find "${pkgdir}"${appdir} \
        -name "package.json" \
            -exec sed -e "s|${srcdir}/${pkgname}|${appdir}|" \
                -i {} \; \
        -or -name ".*" -prune -exec rm -r '{}' \; \
        -or -name "Gruntfile.js" -exec rm '{}' \; \
        -or -name "Makefile" -exec rm '{}' \; \
        -or -name "bin" -prune -exec rm -r '{}' \; \
        -or -name "bin.js" -exec rm '{}' \; \
        -or -name "bower.json" -exec rm '{}' \; \
        -or -name "cli.js" -exec rm '{}' \; \
        -or -name "cmd.js" -exec rm '{}' \; \
        -or -name "coffee" -prune -exec rm -r '{}' \; \
        -or -name "example" -prune -exec rm -r '{}' \; \
        -or -name "examples" -prune -exec rm -r '{}' \; \
        -or -name "gulpfile.js" -exec rm '{}' \; \
        -or -name "man" -prune -exec rm -r '{}' \; \
        -or -name "scripts" -prune -exec rm -r '{}' \; \
        -or -name "test" -prune -exec rm -r '{}' \; \
        -or -name "tests" -prune -exec rm -r '{}' \;
}
