# split

```
# split hol.ova into multiple files
# each split is 2G bytes
$ split -b 2048m hol.ova

# the following files are created after above command
# xaa xab xac xad

# merge the files again
$ cat xa* > hol2.ova

# check the md5 checksum of files
# they should be ths same
$ md5 hol.ova
MD5 (hol.ova) = 0b6a8fbb3354ecdce2e436da741d52c2
$ md5 hol2.ova
MD5 (hol2.ova) = 0b6a8fbb3354ecdce2e436da741d52c2
```
