#!/bin/sh
mkdir /etc/lemonsync
envsubst < /lemonsync.template.cfg > /etc/lemonsync/lemonsync.cfg
lemonsync -c /etc/lemonsync/lemonsync.cfg