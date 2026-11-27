# Home Assistant Add-on: Nornwatt (dev)

__This is the development channel of Nornwatt. It runs nightly builds from the `main` branch and may be unstable. Do not use in a production environment unless you fully understand the implications.__

An open-source, vendor-neutral energy management platform for homeowners.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield]

## About

Nornwatt connects to your smart-home backends (Home Assistant, ioBroker, Tibber, etc.) and provides:

- Real-time energy monitoring across all your devices
- Optimized device scheduling (PV overflow, MILP-based planning)
- A built-in web UI and REST API

The dev channel tracks the `main` branch of [CyberDNS/nornwatt](https://github.com/CyberDNS/nornwatt) and is updated on every merge to `main`.

## Getting started

1. Add this repository as a custom add-on repository in the Home Assistant UI:  
   **Supervisor → Add-on Store → ⋮ → Repositories → `https://github.com/CyberDNS/hassio-addons-repository`**
2. Install **Nornwatt (dev)**.
3. Start the add-on and open it from the sidebar (**Nornwatt**, via Ingress).
   No `config.yaml` and no access token are needed: the add-on connects to this Home Assistant
   by itself and opens on a start page. Add your devices and tariff under **Settings**.

## Moving from Energy Assistant

Nornwatt is the new name of Energy Assistant. Home Assistant treats it as a new add-on
(slug `nornwatt-dev` instead of `energy-assistant-dev`), so its data does not move by itself:

1. Stop the old **Energy Assistant** add-on and install **Nornwatt (dev)**.
2. Copy `config.yaml` and `secrets.yaml` from `/addon_configs/<repository>_energy-assistant-dev/` to
   `/addon_configs/<repository>_nornwatt-dev/` (e.g. with the Samba or SSH add-on).
3. To keep the history, copy `energy-assistant.db` from the old add-on's data folder
   (`/data` inside the container, `/mnt/data/supervisor/addons/data/<repository>_energy-assistant-dev/` on the host)
   into the new one. Nornwatt renames it to `nornwatt.db` on its first start.
4. Start Nornwatt. On its first connection to MQTT it removes the old Energy Assistant
   entities from Home Assistant; the new ones are named `…nornwatt…`. Update automations and
   dashboards that used `sensor.energy_assistant_…` entities.
5. Uninstall the old add-on.

## Configuration

Everything can be configured in the web UI (**Settings**). It is stored in `config.yaml` (and `secrets.yaml`) in the add-on's configuration folder (`/addon_configs/<repository>_nornwatt-dev/`), which you can also edit by hand. A mistake in the file never stops the add-on: it starts anyway and lists the problems in the web UI, where they can be fixed. See the [Nornwatt documentation](https://github.com/CyberDNS/nornwatt/tree/main/docs) for the full configuration reference.

## Release channels

| Add-on folder            | Stability          | Docker tag |
| ------------------------ | ------------------ | ---------- |
| `nornwatt-dev`   | Nightly / unstable | `:dev`     |
| `nornwatt-edge`  | Pre-release        | `:edge`    |
| `nornwatt`       | Stable             | `:latest`  |

## Issues

Please open issues on the [nornwatt project page](https://github.com/CyberDNS/nornwatt/issues).  
Do **not** open issues on this add-on repository.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
