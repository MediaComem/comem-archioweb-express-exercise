# Web-Oriented Architecture Express.js Exercise

Learn to implement API routes with [Express.js][express].

[![build](https://github.com/MediaComem/comem-archioweb-express-exercise/actions/workflows/build.yml/badge.svg)](https://github.com/MediaComem/comem-archioweb-express-exercise/actions/workflows/build.yml)
[![publish](https://github.com/MediaComem/comem-archioweb-express-exercise/actions/workflows/publish.yml/badge.svg)](https://github.com/MediaComem/comem-archioweb-express-exercise/actions/workflows/publish.yml)
[![license](https://img.shields.io/github/license/MediaComem/comem-archioweb-express-exercise)](https://opensource.org/licenses/MIT)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Requirements](#requirements)
- [Usage](#usage)
  - [Run in production mode](#run-in-production-mode)
- [About](#about)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Requirements

- [Node.js][node] 22.x

## Usage

```bash
# Clone the application
git clone git@github.com:MediaComem/comem-archioweb-express-exercise.git

# Install dependencies
cd comem-archioweb-express-exercise
npm ci

# Start the application in development mode
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000).

### Run in production mode

```bash
NODE_ENV=production node ./bin/www
```

## About

This project is an [Express.js][express] application which exposes an
[OpenAPI][openapi] document that describes the API to implement as an exercise.
The UI is rendered with [Swagger UI][swagger-ui].

[express]: https://expressjs.com
[node]: https://nodejs.org
[openapi]: https://github.com/OAI/OpenAPI-Specification
[swagger-ui]: https://swagger.io/tools/swagger-ui/
