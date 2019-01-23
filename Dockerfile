FROM tensorflow/tensorflow:nightly-py3 

WORKDIR /usr/src/app

RUN pip install numpy
RUN pip install scipy
RUN pip install opencv-python
RUN pip install matplotlib
RUN pip install h5py
RUN pip install keras
RUN pip install https://github.com/OlafenwaMoses/ImageAI/raw/master/dist/imageai-2.0.2-py3-none-any.whl
RUN pip install image

COPY ./src .

CMD [ "python", "./predict.py" ]