FROM node:21-slim

ENV FIREBASE_TOOLS_VERSION=12.8.0
WORKDIR /firebase

RUN yarn global add firebase-tools@${FIREBASE_TOOLS_VERSION} && \
    yarn cache clean && \
    firebase -V

RUN apt update && apt install -y curl && rm -rf /var/cache/apk/*

RUN firebase setup:emulators:ui

COPY --link firebase.json /firebase/firebase.json
COPY --link entrypoint.sh /firebase/entrypoint.sh

EXPOSE 4000
EXPOSE 9099

ENTRYPOINT ["./entrypoint.sh"]
