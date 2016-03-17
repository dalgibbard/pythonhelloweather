FROM ubuntu:14.04
MAINTAINER Darren Gibbard (dalgibbard@gmail.com)
RUN apt-get update && apt-get install -y python python-dev python-distribute python-pip git
RUN git clone https://github.com/dalgibbard/pythonlocalweather /pythonlocalweather
RUN pip install flask
EXPOSE 5555
WORKDIR /pythonhelloweather
CMD python helloweather.py
