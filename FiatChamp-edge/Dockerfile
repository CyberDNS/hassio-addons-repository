ARG BASE_TAG
FROM mcr.microsoft.com/dotnet/aspnet:$BASE_TAG AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
RUN apt-get update
RUN apt-get install -y git

WORKDIR "/src"
RUN git clone -b master --single-branch https://github.com/CyberDNS/FiatChamp/
WORKDIR "/src/FiatChamp/FiatChampAddon/FiatClient"
RUN ls
RUN dotnet restore "./FiatChamp.csproj"
COPY . .
WORKDIR "/src/FiatChamp/FiatChampAddon/FiatClient"
RUN dotnet build "FiatChamp.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "FiatChamp.csproj" -c Release -o /app/publish --no-restore

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "FiatChamp.dll"]
