# Debianization for the Hashicorp Nomad Binary

This repository contains the tools to build an updated Hashicorp Nomad debian package.

Following the instructions, you will be able to have a working .deb debian package containing Nomad.

## Short DEB-packaging HowTo

1. Simply run the following script included in the repository

```deb-automate-build.sh```

## Installing the Nomad debian packages

After the build is completed, it's as simple as:

```dpkg -i ../nomad*.deb```

# Dist

The `dist` folder contains sample configs for various platforms.
The examples will be included in the debian package in the share/docs/nomad folder.

## Conventions

This package extract a few bytes from the original package by Dmitry Smirnov.
Configuragions should be placed under `/etc/nomad` and store data will be saved under `/var/lib/nomad/`.
The package will create both directories.
The `nomad` binary will be is installed to `/usr/bin/nomad`.

## Agent Configs

The example configuration files are provided:

- `server.hcl`
- `client.hcl`

Place one of these under `/etc/nomad` depending on the node's role. You should use `server.hcl` to configure a node as a server (which is responsible for scheduling) or `client.hcl` to configure a node as a client (which is responsible for running workloads).

Read <https://nomadproject.io/docs/agent/config.html> to learn which options are available and how to configure them.

