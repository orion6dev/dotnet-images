FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

RUN rm /usr/bin/pwsh

RUN dotnet tool install --global PowerShell && \
    dotnet tool install --global dotnet-monitor && \
    dotnet tool install --global dotnet-reportgenerator-globaltool && \
    dotnet tool install --global gitversion.tool && \
    dotnet tool install --global CycloneDX && \
    dotnet tool install -g JetBrains.ReSharper.GlobalTools
