# How to set timezone?

## steps
```
unlink /etc/timezone
ln -s /etc/localtime /usr/share/zoneinfo/Asia/Shanghai
```

The CST in the output of ```date``` command means "China Standard Time".
