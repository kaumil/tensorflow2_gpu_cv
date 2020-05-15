#using the nightly image of tensorflow
FROM tensorflow/tensorflow:2.0.0a0-gpu-py3-jupyter

RUN pip3 install pillow
RUN pip3 install numpy
RUN pip3 install jupyterlab
RUN pip3 install xeus-python==0.7.1
RUN pip3 install ptvsd
RUN pip3 install SciPy pandas sklearn


RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip3 install opencv-python

RUN jupyter labextension install @mflevine/jupyterlab_html

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]
