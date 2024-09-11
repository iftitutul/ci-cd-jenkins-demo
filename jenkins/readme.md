## Steps to Run Jenkins:

- Create the .env file in the same directory as your docker-compose.yml file and add the environment variable:

  `JENKINS_ADMIN_PASSWORD="<value>"`

- Run the Docker Compose command to start Jenkins:

  `docker-compose up -d`

- Access Jenkins in your browser at http://localhost:8080 (or replace localhost with your server's IP address if running remotely).

- Next we need to retrieve the admin password. We can easily do that by running the docker logs command and specifying the new container. You only need to type the first few characters of the Container ID into the command.

