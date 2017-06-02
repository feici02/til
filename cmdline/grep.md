# grep examples

## get the effective configurations in Vagrantfile
```
grep -v '^\s*#' Vagrantfile
```

## filter the commented and blank lines in .zshrc
```
grep "^[^# ]" .zshrc
```

## filter the commented lines
```
egrep -v '^(#|\s+#)' crypto-config.yaml
```
