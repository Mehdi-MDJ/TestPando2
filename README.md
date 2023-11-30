# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Pando2 - Rails App with Docker

This repository contains a Rails application ready to be run using Docker.

## Prerequisites

Make sure you have Docker and Docker Compose installed on your machine. You can download them from [the official Docker website](https://www.docker.com/get-started).

## Running the Application with Docker

1. **Clone this repository to your machine.**

  <details>
  <summary>Clone the Repository</summary>

  ```bash
  git clone https://github.com/Mehdi-MDJ/TestPando2.git
  cd TestPando2

```
Build the Docker image for the Rails application.

 <details>
   
```bash
  docker build -t medjoumehdi13/rails-app .

```

This will create a Docker image based on the Dockerfile in the project.


Run the Rails application using Docker.

 <details>
   
```bash
  docker run -p 3000:3000 -e medjoumehdi13/rails-app

```

The -p 3000:3000 option maps port 3000 from the container to port 3000 on your host machine.


The application will be available at http://localhost:3000 in your browser.


  Stopping the Application

To stop the application, you can use Ctrl+C in the terminal where the application is running, or run docker-compose down if you are using Docker Compose.
