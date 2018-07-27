import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_git_installed(host):
    git = host.package("git")

    assert git.is_installed


def test_bindutils_installed(host):
    bindutils = host.package("bind-utils")

    assert bindutils.is_installed
