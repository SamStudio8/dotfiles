#!/bin/bash

ansible-playbook -i hosts init.yml --ask-become-pass
