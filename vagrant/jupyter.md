# How to run Jupyter Notebook with Vagrant?

## 0 init
```
mkdir jupyter
cd jupyter

vagrant init --box-version 20170412.0.0 ubuntu/xenial64
```

## 1 modify Vagrantfile
Here is an example:

```
agrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_version = "20170412.0.0"
  
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  
  config.vm.provision "shell", inline: <<-SHELL
    echo 'Acquire::http::Proxy "http://cn-proxy.company.com:80";' > /etc/apt/apt.conf
    apt-get update
    apt-get install python3-venv
    
    echo 'export http_proxy=cn-proxy.company.com:80' >> /home/ubuntu/.profile
    echo 'export https_proxy=cn-proxy.company.com:80' >> /home/ubuntu/.profile
  SHELL

end
```

## 2 boot and login the VM
```
vagrant up
vagrant ssh
```

## 3 install Jupyter Notebook in a virtual env
```
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install jupyter
```

## 4 start jupyter notebook
```
jupyter notebook --ip=0.0.0.0
```

## 5 access jupyter notebook
Now, it can be accessed at the following URL on the machine that you run vagrant: ``` http://127.0.0.1:8888/tree```
