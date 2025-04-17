#!/usr/bin/env bash
    set -o errexit

    # Install ImageMagick (required for Active Storage variants)
    apt-get update && apt-get install -y imagemagick

    # Standard Rails + Webpacker build steps
    bundle install
    yarn install --check-files
