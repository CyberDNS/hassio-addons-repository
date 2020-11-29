ARG BUILD_FROM
FROM $BUILD_FROM as base

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
RUN apt-get update
RUN apt-get install -y git

WORKDIR "/src"
RUN git clone https://github.com/CyberDNS/Lupusec2Mqtt/
WORKDIR "/src/Lupusec2Mqtt/src"
RUN ls
RUN dotnet restore "Lupusec2Mqtt/Lupusec2Mqtt.csproj"
COPY . .
WORKDIR "/src/Lupusec2Mqtt/src/Lupusec2Mqtt"
RUN dotnet build "Lupusec2Mqtt.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-musl-x64 -c Release --self-contained true -o /app/publish

FROM base AS final

ENV LANG C.UTF-8
RUN apk add --no-cache jq libstdc++ libintl icu

WORKDIR /app
COPY --from=publish /app/publish .

WORKDIR /
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
