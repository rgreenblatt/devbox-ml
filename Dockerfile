FROM greenblattryan/devbox-base

#python installs
RUN pip3 install \
      dropbox \
      dill \
      tensorboardX \
      albumentations \
      tqdm \
      opencv-python \
      sklearn \
      dominate \
      numpy \
      torchvision_nightly \
      tensorflow
RUN pip3 install torch_nightly -f \
      https://download.pytorch.org/whl/nightly/cu100/torch_nightly.html
RUN git clone https://github.com/NVIDIA/apex && cd apex && pip3 install -v \
      --no-cache-dir --global-option="--cpp_ext" \
      --global-option="--cuda_ext" . && cd .. && rm -rf apex
