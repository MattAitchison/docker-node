FROM gliderlabs/alpine

# RUN mkdir -p /usr/src/app
VOLUME /usr/src/app
WORKDIR /usr/src/app


# COPY . /usr/src/app/
RUN apk-install -t build-deps nodejs build-base python \
  && npm install -g npm \
  && rm -rf ~/.npm 
  # && npm cache clean
  # && npm install \
  # && ./node_modules/gulp/bin/gulp.js --release \
  # && npm cache clean \
  # && apk del --purge build-deps
