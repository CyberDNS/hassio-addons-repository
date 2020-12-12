#!/bin/bash

export ASPNETCORE_HOMEASSISTANT__CONFIG="/data/options.json"

cd /app

dotnet ./Lupusec2Mqtt.dll
