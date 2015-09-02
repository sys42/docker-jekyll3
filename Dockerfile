FROM sys42/docker-ruby22:latest
MAINTAINER Tom Nussbaumer <thomas.nussbaumer@gmx.net>

RUN echo "export MENTOS_TIMEOUT=20" >> /home/app/.bashrc

## first install github-page => then new jeykll
RUN gem install github-pages
RUN gem install jekyll --pre && jekyll --version
RUN gem install jekyll-paginate
RUN gem install jekyll-sitemap
RUN gem install redcarpet
RUN gem install html-proofer

EXPOSE 4000
WORKDIR /project

RUN echo "alias jekyll='jekyll _3.0.0.pre.beta8_'" >> /home/app/.bashrc \
 && echo "alias js='jekyll serve -H 0.0.0.0'" >> /home/app/.bashrc

CMD ["jekyll _3.0.0.pre.beta8_", "serve", "-H", "0.0.0.0"]
