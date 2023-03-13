git submodule init
git submodule update --recursive
cd skynet-admin/packages/skynet/
make linux
cd ../lua-cjson
make
cp cjson.so ../skynet/luaclib