FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

WORKDIR /app
COPY . .

RUN dotnet publish ./source/TSQLLint.Console/TSQLLint.Console.csproj -c Release -f netcoreapp3.1 -r win-x86   -o assemblies/win-x86
RUN dotnet publish ./source/TSQLLint.Console/TSQLLint.Console.csproj -c Release -f netcoreapp3.1 -r win-x64   -o assemblies/win-x64
RUN dotnet publish ./source/TSQLLint.Console/TSQLLint.Console.csproj -c Release -f netcoreapp3.1 -r osx-x64   -o assemblies/osx-x64
RUN dotnet publish ./source/TSQLLint.Console/TSQLLint.Console.csproj -c Release -f netcoreapp3.1 -r linux-x64 -o assemblies/linux-x64
