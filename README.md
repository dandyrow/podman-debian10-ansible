# podman-debian10-ansible
[![Build](https://github.com/dandyrow/podman-debian10-ansible/actions/workflows/CI-CD.yml/badge.svg?branch=master)](https://github.com/dandyrow/podman-debian10-ansible/actions/workflows/CI-CD.yml)

Debian 10 Buster Podman image for use in testing Ansible roles and playbooks. Based upon the official Debian 10 Buster container image. Includes Ansible and Systemd.

*This has not been tested with Docker and will probably not run as it uses Systemd without the necessary tweaks to run systemd with Docker*

## Tags

- `latest`: Latest stable version of the image.

Latest tag has been tested to ensure it builds, and has working Ansible and Systemd.

## How to Build

This is image is built automatically any time there is a new push to the master branch and on a schedule (to catch updates in the base ubuntu image) and published to the GitHub Container Registry. However if you want to build from source yourself the steps are as follows:

1. Install Podman
2. Clone the repo
3. `cd` into the directory you just cloned the repo into.
4. Run `podman build -t debian10-ansible .`.

## How to use

1. Install Podman
2. Pull this image from the GitHub Container Registry: `podman pull ghcr.io/dandyrow/podman-debian10-ansible:latest` or use the image you built following the above steps.
3. Run a contianer from the image: `podman run -d ghcr.io/dandyrow/podman-debian10-ansible:latest`
4. Use Ansible inside the contianer: `podman exec --tty [container ID] ansible --version`

## License

This project is licensed under the AGPL-3.0 license 

## Author

Created in 2022 by Daniel Lowry