### Node benchmarkings

```
npm install
npm run start
npm run dev
```
### Docker

```sh
docker build -t node-benchmarkings .

docker run -d -p 3000:3000 --name node-benchmarkings \
  -e PORT=3000 \
  node-benchmarkings
```