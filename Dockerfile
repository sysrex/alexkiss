FROM viaops/hugo
COPY . /srv
WORKDIR /srv
RUN rm -rf themes/*
RUN git clone https://github.com/luizdepra/hugo-coder.git themes/hugo-coder
RUN hugo

FROM nginx:alpine
COPY --from=0 /srv/public /usr/share/nginx/html
