#using the nightly image of tensorflow
FROM tensorflow/tensorflow:2.0.0a0-gpu-py3-jupyter

RUN pip3 install pillow
RUN pip3 install numpy
RUN pip3 install opencv-python