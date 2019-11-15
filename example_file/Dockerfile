FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel
# downloaded docker image file name should be changed accordingly

RUN apt-get update && apt-get install -y --no-install-recommends \
  htop \
  libsm6 \
  libxext6 \
  libxrender-dev \
  screen \
  tzdata \
  vim \
  python3-pip

RUN pip install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple pip && \
  pip install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple \
  imgaug \
  ipython \
  jupyter \
  matplotlib \
  opencv-python \
  pandas \
  pillow \
  scipy \
  scikit-image \
  scikit-learn \
  tqdm

EXPOSE 22

