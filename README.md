# nephelaiio.unifi-controller

[![Build Status](https://travis-ci.org/nephelaiio/ansible-role-unifi-controller.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-role-unifi-controller)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-systemd--service-blue.svg)](https://galaxy.ansible.com/nephelaiio/unifi-controller/)

An [ansible role](https://galaxy.ansible.com/nephelaiio/unifi-controller) to install and configure [Ubiquiti Unifi Controller](https://www.ubnt.com/enterprise/software/)

## Role Variables

Please refer to the [defaults file](/defaults/main.yml) for an up to date list of input parameters

## Example Playbook

Unifi installation on regular x86_64 hardware

```
- hosts: unifi
  roles:
     - role: unifi-controller
```

Unifi installation on raspberry pi 3
```
- hosts: unifi
  roles:
     - role: unifi-controller
  vars:
    unifi_java_packages: /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt
    unifi_java_home: oracle-java8-jdk
```

## Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](/requirements.txt)

Role is tested against the following distributions (docker images):
  * Ubuntu Xenial
  * Debian Jessie

You can test the role directly from sources using command ` molecule test `

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
