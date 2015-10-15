#!/bin/bash
export PATH=$PATH:/usr/lib/postgresql/9.4/bin
/opt/patroni/patroni.py /etc/patroni/postgres.yml
