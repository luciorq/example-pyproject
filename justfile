#!/usr/bin/env just
# shellcheck shell=bash

@default:
  just --choose

@create-env:
  #!/usr/bin/env -vS bash -i
  conda create -n py-build-env python pip setuptools

@install:
  #!/usr/bin/env -vS bash -i
  conda run -n py-build-env python -m pip install .
