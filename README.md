My Config
---

This repository consists of my preferred computer configurations such as dot files, preferences, and local environment configurations.


## Installation / Set Up

**This repository is intended to be in the root of your home folder so it can not simply be cloned down. The following steps will properly set up a local copy of this repository in your home folder, but will also overwrite any existing local files that are contained within this repository so PROCEED WITH CAUTION!!**

_NOTE: I am responsible for the loss of any important files on your local filesystem by following these instructions.s
 May the force be with you!_

1. Start in your home folder.

	```cd ~```

2. Create the gitignore file (doing this first will ensure the next step does not lock up your computer).

	```curl -o ~/.gitignore <URL of raw .gitignore file>```

3. Initialize a new local repository.

	```git init```

4. Add a remote that points to this repository.

	```git remote add origin <URL of remote repository>```

5. Update the remote's refs (i.e. fetch).

	```git fetch```

6. Checkout the master branch and set it up to track origin/master. The use of `-f` forces the checkout and will overwrite any local files that are tracked within the repository.

	```git checkout -f -t origin/master```

## Other Stuff

These items are not included within this repository, but are things I enjoy having set up or installed (e.g. gems, node packages, etc).

- [**Git Up**](http://aanandprasad.com/git-up/): A gem to fetch and rebase all locally-tracked remote branches (much better than `git pull`)
- [**Hub**](https://hub.github.com): A command-line wrapper for `git` that integrates with GitHub
- [**nvm**](https://github.com/creationix/nvm): Node Version Manager - Simple bash script to manage multiple active node.js versions
- [**rbenv**](https://github.com/sstephenson/rbenv): Better ruby version / environment management. (_[Why not RVM?](https://github.com/sstephenson/rbenv/wiki/Why-rbenv%3F)_)


### NVM

First, install `nvm` from  https://github.com/creationix/nvm#install-script


Next, install the latest version of Node (from source `-s` so that it includes `npm`)
```
nvm install -s [latest version number]
```

Finally, set version as default for shell
```
nvm alias default [latest version number]
```
