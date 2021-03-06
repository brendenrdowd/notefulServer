require('dotenv').config();
const express = require('express'),
  morgan = require('morgan'),
  cors = require('cors'),
  helmet = require('helmet'),
  app = express(),
  errorHandler = require('./errorHandler'),
  NODE_ENV = require('./config'),
  notefulRouter = require('./noteful-routers/noteful-router'),
  validateBearerToken = require('./validate-bearer-token');

const morganOption = NODE_ENV === 'production' ? 'tiny' : 'common';

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());
app.use(validateBearerToken);

app.use('/api/', notefulRouter);

app.use(errorHandler);

module.exports = app;
