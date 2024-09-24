import express from 'express';
import { load } from 'js-yaml';
import logger from 'morgan';
import { readFileSync } from 'node:fs';
import swaggerUi from 'swagger-ui-express';

import { env } from './config.js';

const app = express();

app.use(logger(env === 'production' ? 'combined' : 'dev'));

const swaggerDocument = load(readFileSync('./openapi.yml', 'utf8'));
app.use('', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

export default app;
