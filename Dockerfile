FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install jupyter
ENV NAME World
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
