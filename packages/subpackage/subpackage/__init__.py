__version__ = '0.1.0'

import importlib.resources


def resources():
    for resource in importlib.resources.contents("subpackage"):
        print(resource)


if __name__ == "__main__":
    resources()
