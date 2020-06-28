#using the nightly image of tensorflow
FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN pip3 install pillow
RUN pip3 install numpy
RUN pip3 install jupyterlab
RUN pip3 install xeus-python==0.7.1
RUN pip3 install ptvsd
RUN pip3 install SciPy pandas sklearn
RUN python -m pip install bokeh
RUN pip3 install chartify


RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip3 install opencv-python

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]
