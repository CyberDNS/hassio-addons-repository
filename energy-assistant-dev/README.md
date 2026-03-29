# Home Assistant Add-on: Energy Assistant (dev)

__This is the development channel of Energy Assistant. It runs nightly builds from the `main` branch and may be unstable. Do not use in a production environment unless you fully understand the implications.__

An open-source, vendor-neutral energy management platform for homeowners.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield]

## About

Energy Assistant connects to your smart-home backends (Home Assistant, ioBroker, Tibber, etc.) and provides:

- Real-time energy monitoring across all your devices
- Optimized device scheduling (PV overflow, MILP-based planning)
- A built-in web UI and REST API

The dev channel tracks the `main` branch of [CyberDNS/energy-assistant](https://github.com/CyberDNS/energy-assistant) and is updated on every merge to `main`.

## Getting started

1. Add this repository as a custom add-on repository in the Home Assistant UI:  
   **Supervisor → Add-on Store → ⋮ → Repositories → `https://github.com/CyberDNS/hassio-addons-repository`**
2. Install **Energy Assistant (dev)**.
3. Create the configuration directory and file at `/config/energy-assistant/config.yaml` inside your Home Assistant configuration directory.  
   Use the [config.yaml.example](https://github.com/CyberDNS/energy-assistant/blob/main/config.yaml.example) and [secrets.yaml.example](https://github.com/CyberDNS/energy-assistant/blob/main/secrets.yaml.example) from the source repository as starting points.
4. Start the add-on and open the web UI via **Ingress** (port 8088).

## Configuration

All configuration is done through `/config/energy-assistant/config.yaml` (and an optional `secrets.yaml` in the same directory). See the [source repository documentation](https://github.com/CyberDNS/energy-assistant) for the full configuration reference.

## Release channels

| Add-on folder            | Stability          | Docker tag |
| ------------------------ | ------------------ | ---------- |
| `energy-assistant-dev`   | Nightly / unstable | `:dev`     |
| `energy-assistant-edge`  | Pre-release        | `:edge`    |
| `energy-assistant`       | Stable             | `:latest`  |

## Issues

Please open issues on the [energy-assistant project page](https://github.com/CyberDNS/energy-assistant/issues).  
Do **not** open issues on this add-on repository.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
