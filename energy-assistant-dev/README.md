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
3. Start the add-on and open it from the sidebar (**Energy Assistant**, via Ingress).
   No `config.yaml` and no access token are needed: the add-on connects to this Home Assistant
   by itself and opens on an empty start page. Add your devices and tariff under **Settings**.

## Configuration

Everything can be configured in the web UI (**Settings**). It is stored in `config.yaml` (and `secrets.yaml`) in the add-on's configuration folder (`/addon_configs/<repository>_energy-assistant-dev/`), which you can also edit by hand. A mistake in the file never stops the add-on: it starts anyway and lists the problems in the web UI, where they can be fixed. See the [source repository documentation](https://github.com/CyberDNS/energy-assistant) for the full configuration reference.

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
