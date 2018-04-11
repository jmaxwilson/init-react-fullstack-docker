# init-react-fullstack-docker

A docker container that you can use to initialize a new Node web application with a Relay-React client fontend and a GraphQL server backend using the react-fullstack scaffolding code available from https://github.com/lvarayut/relay-fullstack

The docker container is based `node:latest` and includes:

- yeoman http://yeoman.io/
- generator-relay-fullstack https://www.npmjs.com/package/generator-relay-fullstack

The docker container runs `yo generator-relay-fullstack` in the working directory (`/usr/src/app`) to generate the scaffolding for a new node web application. It also automatically generates a `Dockerfile` and `docker-compose.yml` file that allow the new app to be run using `docker-compose up`

To generate a new Relay-React-GraphQL web application:

```
mkdir new-relay-app
cd new-relay-app
docker run -i -t -v $PWD:/usr/src/app jmaxwilson/init-relay-fullstack-docker
```
To run the web application:

```
docker-compose up
```

The first time you bring the application up it may take some time for the docker container build, but subsequent runs should be much faster.

To test the web application in your browser, go to :

- `http://localhost:3000` to see the running Relay-React client app
- `hhtp://localhost:8000` to interact with the GraphQL server

 
