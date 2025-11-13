FROM sphinxdoc/sphinx:8.0.0
#ENV http_proxy=http://proxyip:port
#ENV https_proxy=http://proxyip:port

WORKDIR /docs

#RUN mkdir /root/.pip/
#COPY <<EOF /root/.pip/pip.conf
#[global]
#timeout = 6000
#index-url = https://pypi.tuna.tsinghua.edu.cn/simple
#trusted-host = pypi.tuna.tsinghua.edu.cn
#EOF
#RUN pip install --upgrade pip

ADD requirements.txt /docs
RUN pip3 install -r requirements.txt
