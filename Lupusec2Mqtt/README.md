# Home Assistant Add-on: Lupusec2Mqtt

Make your Lupusec Alarm system available in Homeassistant.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

## About

Make your Lupusec XT2 (and compatible) Alarm System available on an MQTT Broker (compatible with Home Assistant).

## Tested with
- XT2
- XT2 Plus

## What is already working

- Alarm panel (config, state, set)
- Burglar Alarm state (config, state)
- Open/Close contacts (config, state)
- Movement detector (config, state)
- Smoke detector (config)

## Getting started

1. Add it as custom repository directly in the Homeassistant UI, through the Supervisor page > Addon Store > Point Menu on the right > Repositories.  
   The URI is: https://github.com/CyberDNS/hassio-addons-repository
2. Reload the repositories if necessary 
3. Install the Lupusec2Mqtt plugin
4. Configure

## License information
Logo and Icon: ["Fox"](https://www.deviantart.com/samadarag/art/Fox-484262458) by [samadarag](https://www.deviantart.com/samadarag) is licensed under [CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/?ref=ccsearch&atype=rich)  
Lupusec: A trademark of LUPUS Electronics

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-no-red.svg
