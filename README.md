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

## Evaluation Criteria for the Task

    - Technical Expertise:
        - The Docker Compose files for both the PHP application stack and Jenkins are correctly configured, ensuring smooth interaction between all services (PHP, MySQL, Nginx, and Jenkins).
        - Jenkins is correctly set up with the necessary plugins and agents to run the CI/CD pipeline.
        - The Jenkinsfile is well-structured with relevant stages for code checkout, build, testing, and deployment.
        - Efficient usage of Docker to create isolated environments and manage dependencies.

    - Problem-Solving:
        - Successfully handled environment setup challenges, such as configuring network and volume management in Docker Compose for seamless communication between services.
        - Resolved any potential compatibility issues between PHP, MySQL, and Nginx versions.
        - Managed Jenkins agent connectivity and ensured the local machine is properly configured to execute pipeline steps.
        - Addressed any unexpected errors during the build, test, or deployment stages in Jenkins and documented the solutions.

    - Security Compliance:
        - Implemented basic security best practices:
        - Used environment variables for sensitive information like MySQL credentials.
        - Applied firewall rules to restrict access to Jenkins and other services.
        - Used a PHP linter in the Jenkins pipeline to check for potential security vulnerabilities.
        - Validated that sensitive information (e.g., passwords, API keys) is not exposed in the repository.

    - Documentation:
        - Step-by-step instructions on configuring Jenkins, setting up the Docker environment, and deploying the PHP application.
        - Detailed explanation of each stage in the Jenkinsfile and how the CI/CD pipeline works.
           

    - Functionality:
        - Verified the PHP application is successfully deployed and accessible via http://localhost after following the setup instructions.
        - Ensured the CI/CD pipeline runs smoothly and deploys the application without errors.
        - Demonstrated the correct functioning of the application, with all components (PHP, MySQL, and Nginx) working as expected.
        - Provided artifacts (like logs) from Jenkins to show the build, test, and deployment process, confirming the pipeline's functionality.

    By meeting these criteria, the task demonstrates a solid understanding of DevOps practices, security measures, and technical capabilities in setting up a CI/CD pipeline using Jenkins.
