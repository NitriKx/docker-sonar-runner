FROM dockerfile/java:oracle-java8
MAINTAINER Pierre Vincent

WORKDIR /usr/local
RUN wget https://github.com/SonarSource/sonar-runner/archive/2.5-RC1.zip -O sonar-runner-2.5-RC1.zip && \
    unzip sonar-runner-2.5-RC1.zip && \
    rm sonar-runner-2.5-RC1.zip
ENV PATH /usr/local/sonar-runner-2.5-RC1/bin:$PATH

WORKDIR /data

ENTRYPOINT ["sonar-runner"]
