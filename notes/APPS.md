# APPS

## GNU/Linux
- rake
    - https://github.com/ruby/rake
- bake
    - https://github.com/ioquatix/bake
- ceedling
    Ruby/Rake-based build and test system for C projects
    - https://github.com/ThrowTheSwitch/Ceedling
- PDF reader:
    - zathura
    - Sioyek
    - gv
- EPUB reader:
    - Calibre
- spell check
    - write-good  `npm package`
    - aspell      `linux`
    - spell       `linux`
    - look        `linux`
- version control
    - git
    - fossil
- string manipulation
    - [String Manipulation `sttr`](https://snapcraft.io/sttr)
- [A modal keyboard-driven virtual pointer: MOUSLESS](https://github.com/rvaiya/warpd) 
- [Linux GUI for Yandex.Disk](https://github.com/abbat/ekstertera)

------------------------------------------------------------------------

- [Run local CI builds and validate configuration](https://snapcraft.io/circleci)
- [Visualizer for neural network, deep learning, and machine learning models](https://snapcraft.io/netron)
- Beekeeper-studio

------------------------------------------------------------------------
- https://excalidraw.com/
- https://app.diagrams.net/


## Benchmarking
- [Perfer: High performance HTTP benchmarking tool](https://github.com/ohler55/perfer)
- [hyperfine: Benchmarking tool](https://github.com/sharkdp/hyperfine)
- perf - Performance analysis tools for Linux

------------------------------------------------------------------------
- [A utility tool powered by fzf for using git interactively](https://github.com/wfxr/forgit)
- [A syntax-highlighting pager for git, diff, and grep output](https://github.com/dandavison/delta)
- ncdu
- [View disk space usage and delete unwanted data, fast](https://github.com/Byron/dua-cli)
- duf
- dupeguru
- cod `go get -u github.com/dim-an/cod`
- i3keys
- portmaster
- bpytop [htop alternative `pip install bpytop`]
- [mprocs: Run multiple commands in parallel](https://github.com/pvolok/mprocs)

## Productivity apps
- porsmo (`cargo install porsmo`)
- Pomotroid
- Pomatez
- Blanket

## Entertainment
- cbonsai


## Education
- Digital Logic Sim
- Bitwise
- Nihonoari
- Qalculate!


## Reverse Engineering
- Binary Ninja
- radare2
    - Cutter
    - iaito


## Etc
- xwinwrap
- vintoy
- Balena Etcher

------------------------------------------------------------------------
- [Projects written in Bourne Shell](https://github.com/terminalforlife/Extra)
------------------------------------------------------------------------

- https://github.com/francoischalifour/todo-cli (Command-line tool to manage Todo lists)
- https://github.com/codito/habito (Simple commandline habits tracker.)
- Google Translator CLI
    `wget git.io/trans`
    `chmod +x ./trans`


## Android Apps
- [Android Sudoku Solver](https://github.com/hypertensiune/Android-Sudoku-Solver-OCR)

------------------------------------------------------------------------
- [xowa Offline wiki Application](https://github.com/gnosygnu/xowa)




------------------------------------------------------------------------
- nmap
- zenmap (gui for nmap)


------------------------------------------------------------------------
- [Click on a pixel on your screen and show its color value](https://github.com/uunnxx/farge)
    - `farge`


### i3 related
- [alttab](https://github.com/sagb/alttab)


### CUDA
https://scribe.rip/@Gunter-Pearson/installing-latest-tensorflow-version-with-cuda-cudnn-and-gpu-support-on-windows-11-pc-e41fac5c5795

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

- [Apertium is a free/open-source platform for developing rule-based machine translation systems!](https://wiki.apertium.org/wiki/Main_Page)
- [Create agents that monitor and act on your behalf. Your agents are standing by!](https://github.com/huginn/huginn)
- [https://github.com/localstack/localstack](A fully functional local AWS cloud stack. Develop and test your cloud & Serverless apps offline!)
