# How to use Vagrant behind a proxy?

Here is an example for the provision section of the Vagrantfile:
```
config.vm.provision "shell", inline: <<-SHELL
    echo 'Acquire::http::Proxy "http://proxy.company.com:80";' > /etc/apt/apt.conf
    apt-get update
    
    echo 'export http_proxy=proxy.company.com:80' >> /home/ubuntu/.profile
    echo 'export https_proxy=proxy.company.com:80' >> /home/ubuntu/.profile
SHELL
```
