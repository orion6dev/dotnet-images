FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base

# Avoid prompts with apt
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

# Install curl and unzip
RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    apt-get install -y curl unzip && \
    apt-get install -y openjdk-17-jdk && \
    curl -f -L -o ijhttp.zip "https://jb.gg/ijhttp/latest" && \
    unzip ijhttp.zip && \
    rm ijhttp.zip && \
    rm -rf /var/lib/apt/lists/* 

# Generate the en_US.UTF-8 locale
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
    
# Set environment variables for the locale
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64