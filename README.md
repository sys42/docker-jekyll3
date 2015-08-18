# docker-jekyll3

[![](https://badge.imagelayers.io/sys42/docker-jekyll3:latest.svg)](https://imagelayers.io/?images=sys42/docker-jekyll3:latest 'Get your own badge on imagelayers.io')


## Jekyl 3.0 (BETA) running in a Docker container

### What's in the container?

Well, this is a running target, but for now:

  * Ubuntu 14.04 including native build environment (build-essential)
  * Python 2.7.6
  * Ruby 2.2
  * NodeJS 0.12.7
  * Jekyll 3.0.0 beta 8

### Quickstart

When using in interactive mode with the settings from 'start.sh':

```
## change directory to the mount point 
cd /project

## generate skeleton in new subdirectory demo (must be done only once)
##
## If you wish to install jekyll into the current directory, you can do so by 
## alternatively running "jekyll new ." instead of a new directory name

jekyll new demo
cd demo

## IMPORTANT: serve website on all ips
jekyll serve -H 0.0.0.0
```

The setting -H 0.0.0.0 is necessary, otherwise you won't see anything from outside the container. If you use jekyll in interactive mode you can call just `js` which is an alias for `jekyll serve -H 0.0.0.0`. 

Now navigate from outside to `localhost:30000` or `127.0.0.1:30000` and you will see the generated website.

### Next Steps

  * customize _config.yml in the project directory (email, site title etc.pp.)
  * check the [sources of some sites using Jekyll](https://github.com/jekyll/jekyll/wiki/sites)
  * ???

### Problems

  * Highlighter pygments doesn't well behave on slow systems (it crashes jekyll with some weird error message). Environment variable MENTOS_TIMEOUT can be used to give the highlighter more time for its job. This image sets MENTOS_TIMEOUT to 20 (default:8) in `/home/app.bashrc`.

### Related Links

[Jeykill Homepage](http://jekyllrb.com/)
[Jekyll on Github](https://github.com/jekyll/jekyll)


