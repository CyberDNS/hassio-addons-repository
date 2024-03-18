ARG BASE_TAG
FROM mcr.microsoft.com/dotnet/aspnet:$BASE_TAG AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
RUN apt-get update
RUN apt-get install -y git

WORKDIR "/src"
RUN git clone -b master --single-branch https://github.com/CyberDNS/Lupusec2Mqtt/
WORKDIR "/src/Lupusec2Mqtt/src"
RUN ls
RUN dotnet restore "Lupusec2Mqtt/Lupusec2Mqtt.csproj"
COPY . .
WORKDIR "/src/Lupusec2Mqtt/src/Lupusec2Mqtt"
RUN dotnet build "Lupusec2Mqtt.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Lupusec2Mqtt.csproj" -c Release -o /app/publish --no-restore

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Lupusec2Mqtt.dll"]
