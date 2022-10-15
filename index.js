const express = require("express");
const app = express();
const port = 3000;

const age = [ { age: "0-21", name:"Minors" }, { age: "22-100", name: "Adults"}, ]


app.use(express.static("public"));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.get("/Sign-in", (req, res) => {
  res.sendFile(__dirname + "/Sign-in.html");
});

app.get("/cover", (req, res) => {
  res.sendFile(__dirname + "/cover.html");
});

app.get("/age/:id", (req, res) => {
  res.json(age[req.params.id]);
});



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});