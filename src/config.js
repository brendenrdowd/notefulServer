module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'production',
  API_TOKEN: process.env.API_TOKEN || 'dummy key',
  DB_URL: process.env.DB_URL || 'postgresql'
};
