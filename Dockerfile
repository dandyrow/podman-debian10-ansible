# podman-debian10-ansible. A Debian 10 Buster Podman image for use in testing 
# Ansible roles and playbooks.
# Copyright (C) 2022 - Daniel Lowry

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

FROM debian:10

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    ansible \
    apt-utils \
    locales \
    systemd \
    systemd-cron \
    sudo \
    software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_GB.UTF-8

RUN mkdir -p /etc/ansible \
    && echo "[local]\nlocalhost ansible_connection=local ansible_python_interpreter=/usr/bin/python3" > /etc/ansible/hosts

CMD ["/lib/systemd/systemd"]