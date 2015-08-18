FROM sys42/docker-ruby22:latest
MAINTAINER Tom Nussbaumer <thomas.nussbaumer@gmx.net>

RUN gem install jekyll --pre && \
    gem install jekyll-paginate jekyll-sitemap redcarpet \
                github-pages html-proofer && \
    echo "alias js='jekyll serve -H 0.0.0.0'" >> /home/app/.bashrc && \
    echo "export MENTOS_TIMEOUT=20" >> /home/app/.bashrc    

## inform the environment about the used port 
## (visible as port in "docker ps")
EXPOSE 4000
