FROM sys42/docker-ruby22:latest
MAINTAINER Tom Nussbaumer <thomas.nussbaumer@gmx.net>

## NOTE: the gemfile is taken from the Jekyll Github repo
##       Maybe we have install some more gems ...
##       (woohaaa ... another 86 mb for the gems)

RUN gem install jekyll --pre

EXPOSE 4000
