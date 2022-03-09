FROM sphinxdoc/sphinx

#ENV http_proxy=http://proxyip:port
#ENV https_proxy=http://proxyip:port

WORKDIR /docs
ADD requirements.txt /docs
RUN pip3 install -r requirements.txt
