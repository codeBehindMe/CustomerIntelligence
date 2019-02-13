FROM tensorflow/tensorflow:latest-py3-jupyter
COPY requirements.txt /tf
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev 
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 8888
CMD jupyter-notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
