# Command find

## find all the dirs named cvs
```
find . -type d -iname cvs
```

## file list with checksum
```
find . -type f | sort | xargs cksum > file-list.txt
```
