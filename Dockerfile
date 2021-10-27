# FROM  lscr.io/linuxserver/code-server
FROM ubuntu


ENV LANG en_US.UTF-8
ENV JAVA_HOME /usr/lib/jvm/msopenjdk-16-amd64
ENV PATH "${JAVA_HOME}/bin:${PATH}"
COPY --from=mcr.microsoft.com/openjdk/jdk:16-ubuntu $JAVA_HOME $JAVA_HOME

RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt-get install -y unzip curl

# RUN mkdir /opt/gradle
# RUN curl --output gradle-7.2-bin.zip https://gradle.org/next-steps/?version=7.2&format=bin 
# RUN unzip -d /opt/gradle gradle-7.2-bin.zip
# RUN ls /opt/gradle/gradle-7.2

RUN apt-get install software-properties-common -y

# add repository and install gradlel
RUN add-apt-repository -y ppa:cwchien/gradle && \
     apt-get update -y && \
     apt-get install -y gradle

# add repository and install maven for jdk 16
RUN add-apt-repository -y ppa:openjdk-r/ppa && \
     apt-get update -y && \
     apt-get install -y maven=3.6.3-5*




# install nodejs 14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
     apt-get install -y nodejs