# How to set timezone?

## steps
```
unlink /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai localtime
```

The CST in the output of ```date``` command means "China Standard Time".
