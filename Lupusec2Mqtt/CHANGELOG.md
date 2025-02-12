# Changelog

## 3.5.0

- feat: added thermostates (Kudos [@trashar](https://github.com/trashar))

## 3.4.2

- feat: added diagnostic data download via Open Web UI button

## 3.4.0

- feat: added water sensors (Kudos [@trashar](https://github.com/trashar))
- feat: upgraded nuget packages with vulnerabilities

## 3.3.5

- fix: incorrect injection of logger into LupusecTokenHandler

## 3.3.4
- fix: added retry get token when response is text/html (login screen)

## 3.3.3
- fix: Handle expired tokens and retry requests

## 3.3.2
- fix: Added DOORBELL status to vibration and smoke detector

## 3.3.1
- fix: Changed to Ubuntu base image to resolve TLS handshake problems

## 3.3.0
- feat: Poll frequency is now configurable in seconds

## 3.2.0
- feat: Vibration detector added
- feat: Smoke detector state publishing added

## 3.1.4
- fix: temperature sensors below 0 reported back only 0 and not the correct negative temperature

## 3.1.3
- fix: after a home assistant restart entities were not available anymore

## 3.1.2

- fix: some characters sent back from Lupusec could crash on decoding 

## 3.1.1

- feat: Changed position of response logging

## 3.1.0

- feat: Complete rewrite of device model and poll loop - could contain breaking changes!
- feat: MQTT library chenged for better reliability
- feat: Cover/Shutters added
- feat: Energy sensor added for power switches
- feat: Changed logging messages for easier debugging of problems
- fix: All motion detectors were showing up in HA as being triggered even if only one was triggered in reality

## 2.2.0

- Cover is now controllable in home assistant

## 2.1.0

- Added cover that shows current state (opened, closed and position)

## 2.0.1

 - Using the correct .NET 6 docker images for different platforms

## 2.0.0

 - Upgrade to .NET 6
 - Added alarm panel vacation mode (mapped to home 3)
 - Some changes in logging

## 1.6.0

- Added XT2 opener contact (Credits: ChrisKeck)
- Added XT2 wall switch (Credits: ChrisKeck)
- Logging ignored devices (Credits: ChrisKeck)
- Refactoring / Bugfixes / Robustness (Credits: ChrisKeck)

## 1.5.0

- Added Temperature/Humidity sensor (Credits: scaiandre)

## 1.4.1

- Added Nuki door lock (Credits: maionaise)

## 1.3.0

- Light added with possiblity to turn on and off (No hue, color, dim implemented yet)

## 1.2.0

- Power switch added with discovery, state and set
- Power switch consumption entity

## 1.1.0

- Motion sensors report now state
- Logging is now configurable

## 1.0.4

- Switched to microsoft dotnet core base image

## 1.0.3

- Additional libraries installed in docker images for ARM support

## 1.0.2

- Removed the option to override in the options (mappings). The overrides must now be done in the Homeassistant UI.

## 1.0.1

- Builds for the different platforms
- Changelog, Readme and Logo

## 1.0.0

- Initial
