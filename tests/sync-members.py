#!/usr/bin/python3
from os import scandir
from os.path import dirname, join, isfile
from yaml import load, SafeLoader

root = dirname(dirname(__file__))

yaml_content = load(open(join(root, 'build-pacman-repo.yaml')), Loader=SafeLoader)
expected_members = {member['directory'] for member in yaml_content['members']}

container = join(root, 'members')
actual_members = {entry.name for entry in scandir(container) if isfile(join(entry, 'PKGBUILD'))}

assert actual_members == expected_members, (actual_members, expected_members)
