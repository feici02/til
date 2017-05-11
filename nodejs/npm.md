# npm

## npm install

There are two ways for npm to install a package:
* locally
* globally

Here is the difference:
> If you want to depend on the package from your own module using something like Node.js' require, then you want to install locally, which is npm install's default behavior. On the other hand, if you want to use it as a command line tool, something like the grunt CLI, then you want to install it globally.

Here are the commands:
```
# locally
npm install <package>

# globally
npm install -g <package>
```

## list globally installed packages
```
npm install -g --depth=0
```

## uninstall globally installed packages
```
npm uinstall -g <package>
```

## reference
1. <https://www.npmjs.com/>
