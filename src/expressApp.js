import Express from 'express';
import compression from 'compression';
import cookieParser from 'cookie-parser';
import bodyParser from 'body-parser';

const app = new Express();
app.use(cookieParser());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(compression());

app.get('/', (req, res) => {
  res.send(`Node benchmarkings`);
});

app.get('/mongodb-simple-select', (req, res) => {
  res.send(`Not yet implemented.`);
});

app.get('/cassandra-simple-select', (req, res) => {
  res.send(`Not yet implemented.`);
});

app.get('/mysql-simple-select', (req, res) => {
  res.send(`Not yet implemented.`);
});

export default app;
