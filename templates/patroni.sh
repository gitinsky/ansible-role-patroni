#!/bin/bash
export PATH=$PATH:/usr/lib/postgresql/9.6/bin
/opt/patroni/patroni.py /etc/patroni/postgres.yml
