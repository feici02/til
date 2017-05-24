docker-machine create -d virtualbox \
	--engine-env HTTP_PROXY=http://cn-proxy.jp.oracle.com:80 \
	--engine-env HTTPS_PROXY=https://cn-proxy.jp.oracle.com:80 \
	proxbox
