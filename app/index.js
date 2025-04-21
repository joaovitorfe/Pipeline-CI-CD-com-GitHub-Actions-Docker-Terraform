
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Aplicação Node.js rodando com Docker + CI/CD!')
})

app.listen(port, () => {
  console.log(`App rodando em http://localhost:${port}`)
})
