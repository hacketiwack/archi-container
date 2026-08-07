# Archi Container

Container image for **[Archi](https://www.archimatetool.com/)**, the open-source ArchiMate modelling tool.

This repository contains the files and configuration required to build the container image for Archi.

[![Build and Publish](https://github.com/hacketiwack/archi-container/actions/workflows/build.yml/badge.svg)](https://github.com/hacketiwack/archi-container/actions)
[![GitHub Release](https://img.shields.io/github/v/release/hacketiwack/archi-container?sort=semver)](https://github.com/hacketiwack/archi-container/releases)
[![GitHub License](https://img.shields.io/github/license/hacketiwack/archi-container)](https://github.com/hacketiwack/archi-container/blob/main/LICENSE)
[![GHCR Package](https://img.shields.io/badge/GHCR-archi--container-blue?logo=github)](https://github.com/hacketiwack/archi-container/pkgs/container/archi-container)

## 📦 Container image

The container image is published to the **GitHub Container Registry**.

## Usage

Pull the image

```sh
podman pull ghcr.io/hacketiwack/archi-container:latest
```

Run the container

```sh
podman run --rm -it ghcr.io/hacketiwack/archi-container:latest
```
