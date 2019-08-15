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
      torchvision \
      tensorflow \
      torch
