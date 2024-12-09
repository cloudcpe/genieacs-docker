#!/bin/bash

service coturn start
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
