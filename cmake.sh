cd "$(dirname $0)"

rm -rf ./.cmake-build
build_dir=./.cmake-build

cmake -DCMAKE_BUILD_TYPE=Debug -S ./ -B ${build_dir}/debug -D CMAKE_INSTALL_PREFIX=./lib/debug
cmake --build ${build_dir}/debug --parallel
cmake --install ${build_dir}/debug

cmake -DCMAKE_BUILD_TYPE=Release -S ./ -B ${build_dir}/release -D CMAKE_INSTALL_PREFIX=./lib/release
cmake --build ${build_dir}/release --release
cmake --install ${build_dir}/release