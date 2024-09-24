# Builder image
# =============

FROM node:22.9.0-alpine AS builder

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm prune --production

# Production image
# ================

FROM node:22.9.0-alpine

ENV NODE_ENV=production \
    PORT=3000

LABEL org.opencontainers.image.authors="simon.oulevay@heig-vd.ch"

WORKDIR /app

RUN addgroup -S app && \
    adduser -D -G app -H -s /usr/bin/nologin -S app && \
    chown app:app /app

USER app:app

COPY --chown=app:app --from=builder /app /app

CMD ["node", "./bin/www.js"]

EXPOSE 3000
