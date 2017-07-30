from testinfra.utils.ansible_runner import AnsibleRunner


testinfra_hosts = \
    AnsibleRunner('.molecule/ansible_inventory').get_hosts('test')


def test_service(Service):
    assert Service('unifi').is_running


def test_socket(Socket):
    assert Socket('tcp://0.0.0.0:8080').is_listening
    assert Socket('tcp://0.0.0.0:8843').is_listening
