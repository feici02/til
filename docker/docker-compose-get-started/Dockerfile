FROM python:3.4-alpine
ADD . /code
WORKDIR /code
ENV https_proxy cn-proxy.jp.oracle.com:80
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
