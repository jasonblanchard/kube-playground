const express = require('express')
const app = express()
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  const helloTo = process.env.HELLO_TO || 'world';
  console.log('Request incoming');
  res.send(`Hello ${helloTo}!`);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}!`)
});
