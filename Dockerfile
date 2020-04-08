#using the nightly image of tensorflow
FROM tensorflow/tensorflow:2.0.0a0-gpu-py3-jupyter

RUN pip3 install pillow
RUN pip3 install numpy

RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip3 install opencv-python