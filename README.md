# Archi Container

Container image for **[Archi](https://www.archimatetool.com/)**, the open-source ArchiMate modelling tool.

This repository contains the files and configuration required to build the container image for Archi.
The container image is published to the **GitHub Container Registry**.

Currently, the image contains Archi and the [coArchi](https://www.archimatetool.com/plugins/#coArchi) plugin.

## Usage

Pull the image

```sh
podman pull ghcr.io/hacketiwack/archi-container:latest
```

Run the container

```sh
podman run --rm -it ghcr.io/hacketiwack/archi-container:latest
```

## Examples

Export an Archi model to HTML static pages.

The command below implies:

- the current directory - result of the command `$(pwd)` - is containing the model,
- that the model has been checked out from a Git repository - using the coArchi plugin, and
- that the `public` directory, where the static files are generated, exists. 

```sh
podman run --rm ghcr.io/hacketiwack/archi-container:latest -v $(pwd):/workspace --modelrepository.loadModel /workspace --html.createReport /workspace/public
```
