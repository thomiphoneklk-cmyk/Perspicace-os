const express = require('express');
const path = require('path');
const app = express();

app.use(express.static(__dirname));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.get('/about', (req, res) => {
  res.sendFile(path.join(__dirname, 'about.html'));
});

app.get('/contact', (req, res) => {
  res.sendFile(path.join(__dirname, 'contact.html'));
});

app.get('/privacy', (req, res) => {
  res.sendFile(path.join(__dirname, 'privacy.html'));
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Perspicace OS en ligne sur http://localhost:${PORT}`);
});

