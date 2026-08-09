# Changelog

## 0.1.0 (2026-08-09)

## What's Changed
* feat(ci): add containerization, GHCR publish workflow, and HA add-on release model by @CyberDNS with @Copilot in https://github.com/CyberDNS/energy-assistant/pull/1
* fix(docker): add README.md to builder stage COPY before package install by @CyberDNS with @Copilot in https://github.com/CyberDNS/energy-assistant/pull/2
* fix(docker): add native build toolchain to builder stage and PR build validation for ARM by @CyberDNS with @Copilot in https://github.com/CyberDNS/energy-assistant/pull/3
* feat(ci): add release automation and HA add-on sync workflows by @CyberDNS with @Copilot in https://github.com/CyberDNS/energy-assistant/pull/4
* fix(sync-hassio-addons): dynamically detect target repo default branch instead of hardcoding "main" by @CyberDNS with @Copilot in https://github.com/CyberDNS/energy-assistant/pull/5
* feat: enhance Home Assistant integration with configurable paths and … by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/6
* feat: update configuration paths and enhance fallback mechanisms for … by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/7
* feat: improve database error handling and update configuration paths … by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/8
* feat: simplify database error handling and remove fallback path logic… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/9
* feat: add liveness probe endpoint for container health checks by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/10
* Feat/tweaking control loop by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/11
* fix: update fetch API calls to remove leading slash for correct endpo… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/12
* feat(storage): add ledger history table and methods for appending and… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/13
* feat(control): add market price calculation based on PV and grid powe… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/14
* Add realtime MILP optimizer for storage control setpoints by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/15
* Refactor control modes and update tariff handling by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/16
* feat(market): implement detailed market price breakdown per tariff zone by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/17
* feat(control): clamp discharge capacity at minimum SOC and optimize g… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/18
* feat(control): enforce SoC limits for charging and discharging decisions by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/19
* Feat/ledger issue by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/20
* feat: include frontend assets in Docker build and update path resolution by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/21
* fix: update import paths to use relative paths instead of absolute paths by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/22
* fix: update import path in LiveView.js to use relative path by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/23
* feat: add MQTT support for EV charging entities and configuration by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/24
* feat: implement staging and overriding functionality for EV targets i… by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/25
* feat(threshold): add threshold-controlled device support by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/26
* Feat/some uiupdates by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/27
* Add unit tests for EV control and OpenWB MQTT plugin by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/28
* Feat/charge plans by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/29
* fix: prevent unintended commands before the first optimization plan by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/30
* feat(release): switch edge/prod from tag-format branching to a promotion model by @CyberDNS in https://github.com/CyberDNS/energy-assistant/pull/31

## New Contributors
* @CyberDNS with @Copilot made their first contribution in https://github.com/CyberDNS/energy-assistant/pull/1
* @CyberDNS made their first contribution in https://github.com/CyberDNS/energy-assistant/pull/6

**Full Changelog**: https://github.com/CyberDNS/energy-assistant/commits/v0.1.0