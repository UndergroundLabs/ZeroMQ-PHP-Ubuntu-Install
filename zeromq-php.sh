#!/bin/bash

# This script will install ZeroMQ and the PHP language bindings
# on Ubuntu 14. This script will only install php5-cli.
#
# Author: James Jeffery <jameslovescode@gmail.com>

# Always run this on a fresh machine
apt-get update

# Install ZMQ and other required tools
apt-get install -f git libzmq3 libzmq3-dev php5-cli php-pear php5-dev pkg-config

# Install ZMQ via pecl
echo "" | pecl install zmq-beta

# Add the extension
echo "extension=zmq.so" > /etc/php5/cli/conf.d/zmq.ini

# You're all done
echo 'Roger that. All done'