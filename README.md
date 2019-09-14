# wp-composer-docker

Wp-composer-docker is a bare-bones development environment for wordpress meant to be used as a starting shell for any wordpress project. A containerized environment built with docker. Wp-composer-docker uses webpack to compile the local files an then uses composer to install wordpress and its dependencies. The composer file can be easily adapted for any local wordpress developement project.

## Installation and Setup

1. Clone or fork the wp-composer-docker repository
2. Run `npm install` to install project dependencies
3. Ensure Docker Desktop is running
4. Run `docker-compose build`
5. Run `npm start`
6. If a browser window does not open navigate to `http://localhost:4200/dist/` or `http://localhost:8080/dist/`