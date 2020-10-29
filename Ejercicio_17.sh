#!/bin/bash
ls -a | tr -d 'a' | tr [:lower:] [:upper:]
exit