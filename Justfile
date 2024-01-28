tag := "0.1.0"

default: build push

build:
  podman build -t "ghcr.io/tarik02/wg-server:{{ tag }}" .

push:
  podman push "ghcr.io/tarik02/wg-server:{{ tag }}"

