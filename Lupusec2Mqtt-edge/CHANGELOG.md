# Changelog
## 3.0.5 (Pre-release: final version will be published under 3.1.0)

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
