#!/bin/sh
FLUENTD_OPT=""
FLUENTD_CONF="fluentd.conf"

fluentd -c /fluentd/etc/${FLUENTD_CONF} -p /fluentd/plugins $FLUENTD_OPT