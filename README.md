# Archi Container

Container image for **[Archi](https://www.archimatetool.com/)**, the open-source ArchiMate modelling tool.

This repository contains the files and configuration required to build the container image for Archi.

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
