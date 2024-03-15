
## CUDA Related

[Installing Latest TensorFlow Version with CUdA, cudNN and GPU](https://scribe.rip/@Gunter-Pearson/installing-latest-tensorflow-version-with-cuda-cudnn-and-gpu-support-on-windows-11-pc-e41fac5c5795)

```
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd ~/opencv_build/opencv
mkdir -p build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules \
    -D ENABLE_FAST_MATH=1 \
    -D CUDA_FAST_MATH=1 \
    -D WITH_CUBLAS=1 \
    -D WITH_CUDA=ON \
    -D BUILD_opencv_cudacodec=OFF \
    -D WITH_CUDNN=ON \
    -D OPENCV_DNN_CUDA=ON \
    -D CUDA_ARCH_BIN=8.6 \
    -D BUILD_EXAMPLES=ON \
    ..

make -j `nproc`
sudo make install
```

`/usr/local/lib/python3.8/dist-packages/cv2`
