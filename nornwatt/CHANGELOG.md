# Changelog

## 0.2.0 (2026-11-28)

Energy Assistant is now **Nornwatt**, and this release is the largest so far: a full web UI with configuration in the browser, a new device model, control you switch on per device, and savings measured against a simulated house without planning.

## Before you update

- **New name, new add-on.** Home Assistant treats Nornwatt as a new add-on, so the configuration and history of Energy Assistant do not move by themselves. See [Moving from Energy Assistant](https://github.com/CyberDNS/nornwatt/blob/main/docs/installation.md#moving-from-energy-assistant).
- **New configuration format.** Everything in the house is now one entry of a flat `devices:` list with a `category`; the `assets:` and `topology:` sections are gone. Start from [`config.yaml.example`](https://github.com/CyberDNS/nornwatt/blob/main/config.yaml.example), or add your devices in the new Settings pages.
- **New entity names in Home Assistant**: `…nornwatt…`, for example `sensor.nornwatt_electricity_price`. Update automations and dashboards.

## New

**Configure in the browser**
- Settings pages for devices, tariffs, forecasts, connections and secrets. Changes are checked and applied without a restart; your comments in `config.yaml` are kept.
- Starts without a configuration file. As an add-on it connects to Home Assistant by itself.
- A mistake in the configuration no longer stops Nornwatt: it starts, lists the problems and lets you fix them in the UI.
- Presets for common Home Assistant integrations (openWB, Wallbox, go-e, Huawei LUNA2000, SolarEdge, thermostats, hot-water tanks).

**New web UI**
- Home with the live power flow, today on one timeline and what the plan does next. A page per device with its plan, history, savings and what was learned.
- The plan explains itself: a reason per device and slot.
- Full-screen mode inside Home Assistant, light and dark theme.

**Control and safety**
- New devices start in observe mode: Nornwatt plans them and shows what it would do and save, and sends nothing until you switch control on.
- When Nornwatt stops, loses its plan or its control loop hangs, every device is released back to its own operation.
- A limit for the grid connection, and power charges (Luxembourg's reference power, Flanders' capacity tariff) in the plan.

**Devices**
- Any battery, charger, thermostat, switch, car or sensor that Home Assistant has, by configuration.
- Directly, without Home Assistant in between: SMA Sunny Boy Storage (Modbus), Zendure (cloud or local MQTT), openWB (MQTT), Tasmota reading heads and plugs, Tibber Pulse on the local network.
- Cars are devices of their own with charging sessions, a charger selector and guest cars.
- Thermal loads (cooler, heater, hot-water tank) kept between two thresholds and run at the best time.

**Tariffs and forecasts**
- ENTSO-E day-ahead prices with your own fees, taxes and markup: any dynamic tariff in Europe.
- Time-of-use tariffs by time of day, weekday and season, also on top of another tariff.
- A PV forecast learned from your own production, and Forecast.Solar without a detour.

**Savings and learning**
- Savings are measured against a simulated house without planning, on the same consumption, solar production and prices, with a panel per battery, car and thermal load.
- Battery wear counts as a cost.
- Learned: consumption per consumer and the household baseline, thermal models, and each battery's efficiency and self-consumption.
- A device's past data can be imported from Home Assistant, so learning does not start from zero.

**Access from outside**
- Read-only REST API and MCP endpoint behind a token.

## Fixes

- Batteries stay on the plan, and planned grid charging is delivered in full.
- Planning runs are aligned to slot boundaries.
- A failing device no longer stops the control of the others.
- SMA: discharging reaches its setpoint despite the inverter's own draw.
- Prices beyond the published ones are estimated from the latest complete day, damped, so a guessed peak no longer makes the plan hold energy for a day.

## License

Nornwatt is now licensed under the Apache License 2.0.




## 0.1.3 (2026-11-01)

## New

- **ioBroker authentication.** If you enable authentication in the ioBroker simple-api adapter, you can now give Nornwatt the credentials. Add `username` and `password` to the `iobroker:` section of your config (store them in `secrets.yaml` and reference them with `!secret`). They are sent as HTTP Basic auth. Without credentials, nothing changes.
- Setting only one of username/password, or combining them with `api_token`, is rejected with a clear error instead of silently picking one.

## Fixes

- The `control_storage.py` helper script now understands `!secret` values in the config.




## 0.1.2 (2026-11-01)

## Fixes

- **No more crash when ioBroker is briefly unreachable.** Previously, if ioBroker went away while Nornwatt was running (for example during a "update all containers" on Unraid), a failed command to the inverter could stop the whole application. Control and planning now log a warning and retry on the next cycle.
- **EV charging:** more reliable catch-up of missed deadlines (only if the car was plugged in when the deadline passed, no phantom resumed charging, safety margin on the feasibility check) and earlier slots are preferred among equally priced ones in phase 1.
- **Planner:** correct handling of slots overlapping the forced EV window, no grid import in PV-labelled EV slots, and only the remaining part of the first slot is planned.
- **Database size:** old history is now purged and space reclaimed in the background in batches, so the database no longer grows without limit and startup is not blocked.

## Improvements

- The planner now logs the achieved MIP gap and whether the time limit was hit.
- Extra diagnostic logging for EV charging decisions.




## 0.1.1 (2026-08-09)

## What's Changed
* fix(docker-publish): strip the leading v from the immutable image tag by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/32


**Full Changelog**: https://github.com/CyberDNS/nornwatt/compare/v0.1.0...v0.1.1



## 0.1.0 (2026-08-09)

## What's Changed
* feat(ci): add containerization, GHCR publish workflow, and HA add-on release model by @CyberDNS with @Copilot in https://github.com/CyberDNS/nornwatt/pull/1
* fix(docker): add README.md to builder stage COPY before package install by @CyberDNS with @Copilot in https://github.com/CyberDNS/nornwatt/pull/2
* fix(docker): add native build toolchain to builder stage and PR build validation for ARM by @CyberDNS with @Copilot in https://github.com/CyberDNS/nornwatt/pull/3
* feat(ci): add release automation and HA add-on sync workflows by @CyberDNS with @Copilot in https://github.com/CyberDNS/nornwatt/pull/4
* fix(sync-hassio-addons): dynamically detect target repo default branch instead of hardcoding "main" by @CyberDNS with @Copilot in https://github.com/CyberDNS/nornwatt/pull/5
* feat: enhance Home Assistant integration with configurable paths and … by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/6
* feat: update configuration paths and enhance fallback mechanisms for … by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/7
* feat: improve database error handling and update configuration paths … by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/8
* feat: simplify database error handling and remove fallback path logic… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/9
* feat: add liveness probe endpoint for container health checks by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/10
* Feat/tweaking control loop by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/11
* fix: update fetch API calls to remove leading slash for correct endpo… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/12
* feat(storage): add ledger history table and methods for appending and… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/13
* feat(control): add market price calculation based on PV and grid powe… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/14
* Add realtime MILP optimizer for storage control setpoints by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/15
* Refactor control modes and update tariff handling by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/16
* feat(market): implement detailed market price breakdown per tariff zone by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/17
* feat(control): clamp discharge capacity at minimum SOC and optimize g… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/18
* feat(control): enforce SoC limits for charging and discharging decisions by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/19
* Feat/ledger issue by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/20
* feat: include frontend assets in Docker build and update path resolution by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/21
* fix: update import paths to use relative paths instead of absolute paths by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/22
* fix: update import path in LiveView.js to use relative path by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/23
* feat: add MQTT support for EV charging entities and configuration by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/24
* feat: implement staging and overriding functionality for EV targets i… by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/25
* feat(threshold): add threshold-controlled device support by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/26
* Feat/some uiupdates by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/27
* Add unit tests for EV control and OpenWB MQTT plugin by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/28
* Feat/charge plans by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/29
* fix: prevent unintended commands before the first optimization plan by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/30
* feat(release): switch edge/prod from tag-format branching to a promotion model by @CyberDNS in https://github.com/CyberDNS/nornwatt/pull/31

## New Contributors
* @CyberDNS with @Copilot made their first contribution in https://github.com/CyberDNS/nornwatt/pull/1
* @CyberDNS made their first contribution in https://github.com/CyberDNS/nornwatt/pull/6

**Full Changelog**: https://github.com/CyberDNS/nornwatt/commits/v0.1.0
---

**Other releases:** see the [release history](https://github.com/CyberDNS/nornwatt/releases) for versions on other channels.
