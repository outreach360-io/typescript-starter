# TypeScript Starter Project

Quickly get started with a new TypeScript project, by cloning / forking this repository.

All the annoying setup is already taken care of, so you can focus on your App. This includes:

- [x] Modules: use export & import
- [x] Environment variables
- [x] Hot-reloading for easy development
- [x] Build and run setup
- [x] Template Dockerfile with multistage build
- [x] Template docker-compose.yml


## Quick Start

```bash
# Install dependencies
$ npm i

# Create .env file
$ cp .env.sample .env

# Run with hot reload
$ npm run dev

# You should now see this message printed to your console
Hello World! 😁
```


## Available Runtimes

There are different modes of running your app available. Choose the one that fits your needs the best.

*If you are unsure, start with [Dev with hot-reloading](#dev-with-hot-reloading).*


## Dev with hot-reloading

To run your project in development mode with hot-reloading enabled, run:

```bash
$ npm run dev
```

In this runtime, `nodemon` is used to server your app.


## Dev without hot-reloading

To run your project in development mode, but without hot-reloading, run:

```bash
$ npm run serve
```

In this runtime, `ts-node` is used to server your app.


## Build and Run

You can also choose to build and run your project. This option is aimed at production deployments.

> For this part, you need to be somewhat familiar with Node / TypeScript and your specific deployment environment.

Different deployment environments provide you with their own secure ways of passing your secrets to your application. To give you the flexibility to follow the best practices of your sepecific deployment environment, the default way to pass environment variables via `dotenv` is disabled in this mode.

```bash
# Build application in dist
$ npm run build

# Run application from dist
$ npm start
```

**You need to setup your environment variables for your production setup!**


## Docker

To run your application as a Docker container, you can use the included `Dockerfile` template. *You will likely need to adapt the `Dockerfile` according to the requirements of your application.*

The Docker image is built the same way as [Build and Run](#build-and-run), which means you need to pass your environment variables to the Docker container when you want to run your application. The example below includes a way to pass your envirnoment variables as a file.

```bash
# Create your Docker image
$ docker image build -t your-image .

# Run a Docker container
$ docker container run --name your-container -d --env-file ./.env your-image

# View the container logs
$ docker container logs your-container
```

The example above runs the container in the `detached` mode, which is why you don't see the output directly in your console and will need to look at the container logs instead. If you instead want to see the logs directly in your console, just omit the `-d` from the command above.

Learn more about `detached` mode here: [https://docs.docker.com/engine/reference/run/#detached--d](https://docs.docker.com/engine/reference/run/#detached--d)

Learn more on passing environment variables to a basic Docker container: [https://docs.docker.com/engine/reference/commandline/run/#env](https://docs.docker.com/engine/reference/commandline/run/#env)


## Docker Compose

You can also run your application with `docker compose` by using the included `docker-compose.yml` template. *Same as described in the [Docker](#docker) section, you will likely need to adapt the `docker-compose.yml` according to the requirements of you application*

The `docker-compose.yml` is set up to build your image and run your container in a single command.

```bash
# Run application with docker compose
$ docker compose up -d

# View container logs
$ docker container logs typescript-starter-your-app-1
```

Same as the Docker example above, this command runs `docker compose` in `detached` mode, so you will need to inspect the logs to see the output. Also as in the Docker example, just omit `-d` from the command to disable `detached` mode.

Learn more about passing environment variables to a Service in a `docker-compose` setup: [https://docs.docker.com/compose/environment-variables/](https://docs.docker.com/compose/environment-variables/set-environment-variables/)
