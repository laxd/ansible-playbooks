#!/bin/bash

vagrant up
ansible-playbook -i virtualhosts $*
vagrant destroy -f
