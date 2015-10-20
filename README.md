# SonarQube Runner (Sonar-Runner) container

This Docker image includes the Sonar-Runner executable, used to push Code Analysis and Coverage results to a SonarQube server. (see http://docs.sonarqube.org/display/SONAR/Analyzing+with+SonarQube+Runner)

## Pull this image

```
docker pull nitrikx/sonar-runner:2.4
docker pull nitrikx/sonar-runner:2.5-RC1
```

## Usage

By default, this image with run the sonar-runner executable inside the /data directory on the container.

### Running against your project

You can make your project directory available to the container by sharing a volume when starting the container:

```
docker run --rm -v /path/to/your/project:/data -v /path/to/your/project/sonar-runner.properties:/usr/local/sonar-runner-2.4/conf/sonar-runner.properties nitrikx/sonar-runner:2.4
```

You can directly link the sonar-runner.properties file inside the container in order to control the runner configuration. Prefer using the sonar encryption feature to securise your credentials (http://docs.sonarqube.org/display/SONAR/Settings+Encryption).
