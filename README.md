# nephelaiio.unifi-controller

[![Build Status](https://travis-ci.org/nephelaiio/ansible-role-unifi-controller.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-role-unifi-controller)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-systemd--service-blue.svg)](https://galaxy.ansible.com/nephelaiio/unifi-controller/)

An [ansible role](https://galaxy.ansible.com/nephelaiio/unifi-controller) to install and configure [Ubiquiti Unifi Controller](https://www.ubnt.com/enterprise/software/)

## Role Variables

Please refer to the [defaults file](/defaults/main.yml) for an up to date list of input parameters

## Example Playbook

- hosts: unifi
  roles:
     - role: unifi-controller

## Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](/requirements.txt)

Role is tested against the following distributions (docker images):
  * Ubuntu Xenial
  * Debian Jessie

You can test the role from sources using the command line using molecule directly ` molecule test `

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
