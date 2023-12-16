FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

RUN dotnet tool install --global PowerShell --version 7.3.9 && \
    dotnet tool install --global dotnet-monitor --version 7.3.2 && \
    dotnet tool install --global dotnet-reportgenerator-globaltool --version 5.2.0 && \
    dotnet tool install --global gitversion.tool --version 5.12.0 && \
    dotnet tool install -g JetBrains.ReSharper.GlobalTools --version 2023.3.1