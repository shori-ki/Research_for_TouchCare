    #! /bin/sh
    # Setting the Ubuntu for open-CV
    sudo apt-get -yV install cmake
    sudo apt-get -yV install libeigen3-dev
    # GUI
    sudo apt-get -yV install libgtk2.0-dev
    sudo apt-get -yV install libgtkglext1-dev
    sudo apt-get -yV install libqt4-dev
    sudo apt-get -yV install freeglut3-dev
    # 
    sudo apt-get -yV install opencl-headers
    sudo apt-get -yV install libtbb-dev
    # 
    sudo apt-get -yV install libjpeg-dev
    sudo apt-get -yV install libjasper-dev
    sudo apt-get -yV install libpng++-dev
    sudo apt-get -yV install libtiff-dev
    sudo apt-get -yV install libopenexr-dev
    sudo apt-get -yV install libwebp-dev
    # Python
    sudo apt-get -yV install libpython3-dev
    sudo apt-get -yV install python-numpy python-scipy python-matplotlib
    sudo apt-get -yV install python3-numpy python3-scipy python3-matplotlib
    #
    cd ~
    # OpenCV 
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
    sudo make install
    # conifugre the dynamic links
    sudo ldconfig