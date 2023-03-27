# sway

[![Build Status](https://github.com/wavyland/sway/workflows/CI/badge.svg)](https://github.com/wavyland/sway/actions?query=workflow%3ACI)

This repository defines a multi-arch Docker image for [sway](https://github.com/swaywm/sway).

## Usage

```shell
docker run --rm -e WLR_BACKENDS=headless -e XDG_RUNTIME_DIR=/var/lib/wavy -v $PWD/xdg:/var/lib/wavy ghcr.io/wavyland/sway
```
