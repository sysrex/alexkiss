FROM viaops/hugo
COPY . /srv
WORKDIR /srv
RUN rm -rf themes/*
RUN git clone https://github.com/naro143/hugo-coder-portfolio themes/coder-portfolio
RUN hugo

FROM nginx:alpine
COPY --from=0 /srv/public /usr/share/nginx/html
