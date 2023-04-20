const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.send('Hello World 1210!, my name is: '+ process.env.MY_NAME)
})

app.get('/api', (req, res) => {
  json = {  "name": "John Doe",  "age": 38,  "city": "New York" }
  res.json(json)
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})