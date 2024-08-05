
. env.sh

cd /usr/tools

if [ -f config/$VERSION/repo.key ]; then
 echo "Repository key present"
else
 echo "Needs generate repository key"
 openssl genrsa -out config/$VERSION/repo.key 4096
 openssl rsa -pubout -in config/$VERSION/repo.key -out config/$VERSION/repo.pub

fi

echo "Generating fingerprint and installing under /usr/core"
make fingerprint > /usr/core/src/etc/pkg/fingerprints/OPNsense/trusted/apartnet
