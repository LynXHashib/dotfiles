const express = require('express');
const path = require('path');
const url = require('url');

const app = express();
const PORT = 3000;
// SERVE STAIC FILES LIKE CSS

app.use(express.static(path.join(__dirname, '..', '..', 'messenger')));

// Define a route to serve the HTML file
app.get((req, res) => {
  // Send the HTML file as the response
  const pathName = req.url;
  console.log(pathName);
  if (pathName === '/') {
    res.sendFile(path.join(__dirname, '..', 'index.html'));
  }
});

app.listen(PORT, () => console.log('Server is running'));
