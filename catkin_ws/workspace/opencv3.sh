#! /bin/sh
 # Setting the Ubuntu for open-CV
apt-get -yV install cmake
apt-get -yV install libeigen3-dev
 # GUIフレームワーク関連
apt-get -yV install libgtk2.0-dev
apt-get -yV install libgtkglext1-dev
apt-get -yV install libqt4-dev
apt-get -yV install freeglut3-dev
 # 並列処理関連
apt-get -yV install opencl-headers
apt-get -yV install libtbb-dev
 # 画像フォーマット関連
apt-get -yV install libjpeg-dev
apt-get -yV install libjasper-dev
apt-get -yV install libpng++-dev
apt-get -yV install libtiff-dev
apt-get -yV install libopenexr-dev
apt-get -yV install libwebp-dev
 # Python関連
apt-get -yV install libpython3-dev
apt-get -yV install python-numpy python-scipy python-matplotlib
apt-get -yV install python3-numpy python3-scipy python3-matplotlib
 # ホームへ移動
 cd ~
 # OpenCV の取得
 wget https://github.com/opencv/opencv/archive/3.3.0.tar.gz
 tar xvzf 3.3.0.tar.gz
 cd opencv-3.3.0
 # Build script for Open-CV 3
 # CMAKE build environment setting in open-cv directory
 SOURCE_DIR="echo $(cd $(dirname $0);pwd)"
 BUILD_DIR=${SOURCE_DIR}/build
 GENERATOR_NAME="Unix Makefiles"
 mkdir build
 cd build
 cmake \
 -G "${GENERATOR_NAME}" \
 --build ${BUILD_DIR} \
 -D BUILD_opencv_world=ON \
 ${SOURCE_DIR}
 # make the library
 make -j2
 # install the library
make install
 # conifugre the dynamic links
ldconfig