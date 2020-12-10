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
ARG BUILD_ARCH
RUN if [ true ] ; then echo yes ; else echo no ; fi

RUN echo $BUILD_ARCH
RUN if [ "$BUILD_ARCH" = "amd64" ] ; then dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-musl-x64 -c Release --self-contained true -o /app/publish ; fi
RUN if [ "$BUILD_ARCH" = "i386" ] ; then dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-musl-x64 -c Release --self-contained true -o /app/publish ; fi
RUN if [ "$BUILD_ARCH" = "armhf" ] ; then dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-arm -c Release --self-contained true -o /app/publish ; fi
RUN if [ "$BUILD_ARCH" = "armv7" ] ; then dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-arm -c Release --self-contained true -o /app/publish ; fi
RUN if [ "$BUILD_ARCH" = "aarch64" ] ; then dotnet publish "Lupusec2Mqtt.csproj" --runtime linux-arm64 -c Release --self-contained true -o /app/publish ; fi

FROM base AS final

ENV LANG C.UTF-8
RUN apk add --no-cache jq libstdc++ libintl icu libc6-compat libcurl libgcc krb5-libs icu-libs lttng-ust-dev libssl1.1 libunwind libuuid zlib

WORKDIR /app
COPY --from=publish /app/publish .

WORKDIR /
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
