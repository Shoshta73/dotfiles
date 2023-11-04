aseprite() {
  # i have bough it just prefer building it from source
  git clone --depth=1 --recursive --shallow-submodules https://github.com/aseprite/aseprite.git
  sudo pacman -S --needed gcc clang libc++ cmake ninja libx11 libxcursor mesa-libgl fontconfig
  cd aseprite
  mkdir -p build
  mkdir -p deps
  cd deps
  mkdir skia
  cd skia
  wget https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Linux-Release-x64-libc++.zip
  unzip Skia-Linux-Release-x64-libc++.zip
  rm Skia-Linux-Release-x64-libc++.zip
  cd ..
  cd ..
  cd build
  export CC=clang
  export CXX=clang++
  cmake \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_CXX_FLAGS:STRING=-stdlib=libc++ \
    -DCMAKE_EXE_LINKER_FLAGS:STRING=-stdlib=libc++ \
    -DLAF_BACKEND=skia \
    -DSKIA_DIR=$HOME/Apps/aseprite/deps/skia \
    -DSKIA_LIBRARY_DIR=$HOME/Apps/aseprite/deps/skia/out/Release-x64 \
    -DSKIA_LIBRARY=$HOME/Apps/aseprite/deps/skia/out/Release-x64/libskia.a \
    -G Ninja \
    ..
ninja aseprite

}

sourceArch() {
  mkdir -p ~/Apps
  cd ~/Apps
  aseprite
}
