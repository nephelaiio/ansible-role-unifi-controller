from testinfra.utils.ansible_runner import AnsibleRunner


testinfra_hosts = \
        AnsibleRunner('.molecule/ansible_inventory').get_hosts('test')


def test_command(Command):
    assert Command('unifi-controller --version').rc == 0
