# set up git
```
git config --global user.name "Mona Lisa"
git config --global user.email "email@example.com"

# cache the password for one hour
git config --global credential.helper cache
git config --global credential.helper "cache --timeout=3600"

git config --global -l

cat ~/.gitconfig
```
