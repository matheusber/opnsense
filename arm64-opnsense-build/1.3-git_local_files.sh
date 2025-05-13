#!/bin/sh

# Checks if there is repo.key, if not it generates one and creates a fingerprint for the package and update repository that may be generated later on

. env.sh

cd /usr/core

git checkout -b ${TAG_SRC}-local ${TAG_SRC}
# rc script already copied
git add -f src/etc/pkg/fingerprints/OPNsense/trusted/apartnet
git commit -a -m "Updating code: adding custom rc and fingerprint"
make plist-fix
git commit -a -m "Commit after make plist-fix"

echo "==> Remember to use the custom branch created here on make core. env.sh checked already has this"
