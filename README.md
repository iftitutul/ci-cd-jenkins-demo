# ci-cd-jenkins-demo

1. Configured the PHP MySQL Nginx App using Docker Compose File:

    -  Created a `docker-compose.yml` file under `app` directory to define the services for the PHP web application, MySQL database, and Nginx web server.

    This setup includes:
   
        - app: PHP 8.1 running as FastCGI Process Manager (FPM).
        - db: MySQL 8.0 database with credentials and a sample database.
        - web: Nginx server configured to serve the PHP application.

    Verified the application is running by accessing http://localhost:9090

3. Installed Jenkins Using Docker Compose File:

    - Added Jenkins service to the `docker-compose.yml` file under `jenkins` directory to run Jenkins as a Docker container.

    This setup:
   
       - Pulls the latest stable Jenkins image.
       - Exposes ports 8080 (Jenkins interface)
       - Creates a named volume jenkins_data for persistent Jenkins data storage.

    Verified the application is running by accessing http://localhost:8080

5. Added Jenkins Agent as a Local Machine:

    - Configured a Jenkins agent node on the local machine to execute build steps.
    
    Steps:
   
       - Navigated to Manage Jenkins > Manage Nodes and Clouds.
       - Created a new node (agent) and provided relevant configurations (e.g., -name, number of executors, remote root directory).
       - Configured SSH credentials for secure communication.

     Verified agent connectivity by checking its status in the Jenkins dashboard.

7. Jenkinsfile for CI/CD Implementation:

    - Created a `Jenkinsfile` under `app` directory to define the CI/CD pipeline.

5. Stages Explanation:

    - Checkout: Clones the PHP application repository from GitHub.
    - Build: Builds and starts the Docker services using docker-compose.
    - Static Code Analysis: Performs linting of PHP code to check for syntax errors.
    - Deploy: Deploys the application to the local Docker environment.
    - Post Actions: Shuts down the Docker containers and archives logs.
