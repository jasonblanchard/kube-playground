const express = require('express')
const app = express()
const port = process.env.PORT || 8080;
const morgan = require('morgan');

app.use(morgan('combined'));

app.get('/', (req, res) => {
  const helloTo = process.env.HELLO_TO || 'world';
  res.send(`Hello ${helloTo}!`);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`)
});
