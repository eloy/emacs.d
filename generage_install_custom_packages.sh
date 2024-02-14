#!/bin/bash
echo ";; CUSTOM PACKAGES" > install_custom_packages.el
for PKG in `find ./elpa/ -name '*-pkg.el' | xargs basename -s .el`
do
    echo "package-install ${PKG}" >> install_custom_packages.el
done
