# Use the official ASP.NET runtime image for .NET 9
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base

# Avoid prompts with apt
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# Set up working directory
WORKDIR /

# Install all necessary packages, configure locales, download IntelliJ HTTP Client CLI, and install PowerShell
RUN apt-get update && \
    apt-get install -y --no-install-recommends locales curl unzip wget openjdk-17-jdk && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    curl -f -L -o ijhttp.zip "https://jb.gg/ijhttp/latest" && \
    unzip ijhttp.zip && \
    rm ijhttp.zip && \
    wget -q https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y --no-install-recommends powershell && \
    rm packages-microsoft-prod.deb && \
    rm -rf /var/lib/apt/lists/*

# Verify PowerShell installation
RUN pwsh --version
