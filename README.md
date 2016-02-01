version bumper
==============

A set of npm scripts to automate the process of version releases

Install
-------

**This proof of concept will make commits to its repo and will try to push
those commits to its remotes**

First, fork the repo and then:

    git clone <registry/version-bumper>
    cd version-bumper
    npm install

Usage
-----

### Set a fixed version

    npm run version 2.5.0

  * no commit
  * no tag

### Prepare for development iteration

    npm run version-devel

  * current version: `2.5.1-0`
  * commit: `Preparing for next development iteration (2.5.1-0)`
  * no tag

### Relase

    npm run version-release

  * current version: `2.5.1`
  * commit: `Release 2.5.1`
  * tag: `2.5.1`

### Bump

    npm run bump

A shortcut for the most common use case:

 1. `npm run version-release`
 2. `npm run version-devel`

Design decisions
----------------

`mversion` package is used instead of `npm version` to be able to bump several
files at once: `package.json` and `bower.json` in our case

`.mversionrc` file contains a hook to push the changes after a commit is done
by `mversion`

`npm run broadcast` pushes changes and tags to all available git remotes

`npm run pkgversion` is needed to get an updated version in the environment
variable

`npm run version devel` uses `git` directly to commit the changes instead of
using `mversion` to avoid creating a `git tag` for that commit
