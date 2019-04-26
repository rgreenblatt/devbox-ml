FROM greenblattryan/devbox-base

#python installs
RUN apt-get update
RUN apt-get install -y unzip python-qt4 libglib2.0-0 pkg-config
RUN pip3 install dropbox dill tensorboardX albumentations tqdm opencv-python \
      sklearn dominate numpy torch==0.4.1 torchvision==0.2.1 tensorflow

