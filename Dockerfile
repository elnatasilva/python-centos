FROM centos

RUN yum -y groupinstall "Development Tools"

RUN yum -y install openssl-devel bzip2-devel libffi-devel wget zlib zlib-devel python3-devel python3-setuptools 

RUN wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz

RUN tar xvf Python-3.8.1.tgz

WORKDIR Python-3.8.1/

RUN ./configure --enable-optimizations

RUN make altinstall

WORKDIR /
