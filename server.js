const express = require("express");
const {static} = require("express");
const app = express();
const port = 3000;

// set views
app.set("views", "./views");
app.set("view engine", "ejs");
// static files
app.use(express.static("public"));
app.use("/css", express.static(__dirname + 'public/css'));
app.use("/js", express.static(__dirname + 'public/js'));
app.use("/img", express.static(__dirname + 'public/img'));

app.get('/', (require, response) =>{
    response.render('index');
})
app.listen(port, ()=> console.info(`Listening on port ${port} here http://localhost:${port}`));