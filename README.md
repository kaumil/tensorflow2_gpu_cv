# tensorflow2_gpu_cv
Dockerfile to build image using tensorflow 2 with gpu and jupyter lab support for computer vision tasks.
Port 8888 is for jupyter lab and 6006 is for tensorboard

Libraries include:
- tensorflow-gpu
- tensorboard
- scikit-learn
- pandas
- numpy
- bokeh
- chartify
- Pillow
- opencv-python
- jupyter-lab

### Command to run:
`docker container run -it --gpus all -v /path/to/directory:/tf/notebooks/ --rm -p 8888:8888 -p 6006:6006 tensorflow2_gpu_cv`

### Commands to start Tensorboard:
`%load_ext tensorboard`
`%tensorboard --logdir /path/to/logs/ --host 0.0.0.0`
