FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base

# Avoid prompts with apt
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

# Update package lists
RUN apt-get update

# Install locales
RUN apt-get install -y locales

# Generate the en_US.UTF-8 locale
RUN locale-gen en_US.UTF-8

# Install curl and unzip
RUN apt-get install -y curl unzip

# Install OpenJDK 17
RUN apt-get install -y openjdk-17-jdk

# Download IntelliJ HTTP Client CLI
RUN curl -f -L -o ijhttp.zip "https://jb.gg/ijhttp/latest"

# Unzip the downloaded file
RUN unzip ijhttp.zip

# Clean up the zip file
RUN rm ijhttp.zip

# Clean up the apt cache
RUN rm -rf /var/lib/apt/lists/*

# Add Microsoft's package repository for PowerShell
RUN wget -q https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb

# Install the repository package
RUN dpkg -i packages-microsoft-prod.deb

# Update package lists for Microsoft packages
RUN apt-get update

# Install the latest stable version of PowerShell
RUN apt-get install -y powershell

# Clean up the Microsoft repository package
RUN rm packages-microsoft-prod.deb

# Verify PowerShell installation
RUN pwsh --version

# Generate the en_US.UTF-8 locale
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
    
# Set environment variables for the locale
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64