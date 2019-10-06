FROM ubuntu:18.04

# actualizando e instalando python
RUN apt-get update && apt-get install -y python

# instalando pip y dependencias de server.py
RUN apt-get install -y python-pip \
  python-dev \
  stress \
  cpulimit \
  psmisc

# instalando dependencias pip
RUN pip install flask psutil

# copiando server.py
COPY server.py /opt/server.py

# ejecucion de proceso
CMD ["python", "/opt/server.py"]