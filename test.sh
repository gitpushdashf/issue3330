#!/bin/sh

set -e

poetry install

poetry run python3 packages/subpackage/subpackage/__init__.py

mkdir packages/subpackage/subpackage/somemoreresources
touch packages/subpackage/subpackage/somemoreresources/test.txt

poetry install

poetry run python3 packages/subpackage/subpackage/__init__.py

# "somemoreresources" never shows up.
