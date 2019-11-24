#! /bin/bash
cd ..

ver=14
echo 1.0.$ver

# remove exist docker image
docker rmi tool-ld-conversion:1.0.$ver

rm -rf build
rm -rf bin

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4
echo 'Build complete!'

echo 'Dock build start'
cd ..
docker build -t tool-ld-conversion:1.0.$ver .
echo 'Dock build end'


echo 'Dock build start'
docker tag tool-ld-conversion:1.0.$ver quay.io/oqton/tool-ld-conversion
docker images | grep 1.0.$ver
echo 'Dock build end'
